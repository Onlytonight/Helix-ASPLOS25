# Yixuan Mei
import os
import sys
import time

import ray
import subprocess

# target_path = "/home/meiyixuan2000/helix/artifact_evaluation/single_cluster"
target_path = "/home/xfusion/Helix-ASPLOS25"


def kill_gpu_processes():
    # Get all GPU processes
    try:
        # Get process IDs and their commands
        cmd = "nvidia-smi --query-compute-apps=pid,process_name --format=csv,noheader,nounits"
        output = subprocess.check_output(cmd, shell=True, text=True)

        # Parse the output to get PIDs and process names
        pids_to_kill = []
        for line in output.strip().split('\n'):
            print(line)
            if line:
                parts = line.split(', ')
                if len(parts) >= 2:
                    pid, process_name = parts[0], parts[1]
                    # Skip Xorg processes
                    if process_name == '/usr/lib/xorg/Xorg':
                        print(f"Skipping Xorg process with PID {pid}")
                        continue
                    pids_to_kill.append(int(pid))
                else:
                    pid = parts[0]
                    pids_to_kill.append(int(pid))

        # Kill each process
        for pid in pids_to_kill:
            try:
                os.kill(pid, 9)  # SIGKILL
                print(f"Killed process {pid}")
            except ProcessLookupError:
                print(f"Process {pid} not found")
            except Exception as e:
                print(f"Error killing process {pid}: {e}")

        return len(pids_to_kill)

    except subprocess.CalledProcessError:
        print("Error running nvidia-smi")
        return 0


def launch_script(target_cmd: str):
    with open(f"{target_path}/launch_worker.sh", "w") as f:
        f.write(target_cmd)
    kill_gpu_processes()
    time.sleep(5)
    os.system(f"bash {target_path}/launch_worker.sh")

def get_runtime_path():
    import subprocess
import json
import os

def find_conda_env_path(env_name):
    """
    根据名称查找特定 Conda 环境的路径。
    """
    try:
        result = subprocess.run(['conda', 'env', 'list', '--json'], capture_output=True, text=True, check=True)
        data = json.loads(result.stdout)
        for env_path in data['envs']:
            if os.path.basename(env_path) == env_name:
                return env_path
        return None
    except (subprocess.CalledProcessError, FileNotFoundError, json.JSONDecodeError) as e:
        print(f"执行 conda 命令时出错: {e}")
        return None


def main():
    # parse args
    assert len(sys.argv) == 2, "Usage: python remote_run.py <target_cmd>"
    command = sys.argv[1]

    # initialize ray and create remote functions
    ray.init()
    path = find_conda_env_path("runtime"  )

    
    target_cmd = f"""
    cd {target_path}
    conda run -n runtime --no-capture-output -v python {command} 
    """

    refs = []
    for node in ray.nodes():
        if 'GPU' in node['Resources'] and node['Resources']['GPU'] > 0:
            # for worker nodes with GPUs
            launch_remote_fn = ray.remote(num_gpus=1)(launch_script)
            ref = launch_remote_fn.remote(target_cmd)
            refs.append(ref)
        else:
            # host node will go here
            continue

    ray.get(refs)
    ray.shutdown()


if __name__ == '__main__':
    main()
