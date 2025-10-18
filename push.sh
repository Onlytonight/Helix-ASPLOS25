#!/bin/bash

# --- 配置远程服务器信息 ---

# 远程服务器的 IP 地址
REMOTE_IPS=("192.168.10.23" "192.168.10.73" "192.168.10.90")

# 远程服务器的 SSH 用户名
REMOTE_USER="xfusion"

# 远程服务器上 Git 仓库的路径
REMOTE_REPO_PATH="/home/xfusion/Helix-ASPLOS25"


# --- 本地 Git 操作 ---

# 检查当前目录是否为 Git 仓库
if [ ! -d ".git" ]; then
    echo "错误：当前目录不是一个 Git 仓库。"
    exit 1
fi

# 获取自定义 commit 信息
read -p "请输入提交信息: " COMMIT_MESSAGE

# 如果没有输入提交信息，则使用默认信息
if [ -z "$COMMIT_MESSAGE" ]; then
    COMMIT_MESSAGE="默认提交信息：$(date +'%Y-%m-%d %H:%M:%S')"
fi

echo "正在添加所有文件..."
git add .

echo "正在提交，提交信息为：'$COMMIT_MESSAGE'..."
git commit -m "$COMMIT_MESSAGE"

echo "正在推送到远程仓库..."
git push

# 检查 git push 是否成功
if [ $? -ne 0 ]; then
    echo "错误：git push 失败。"
    exit 1
fi

echo "本地代码推送成功！"


# --- 远程服务器拉取代码 ---

echo "正在远程服务器上拉取代码..."

for IP in "${REMOTE_IPS[@]}"
do
    echo "--- 正在连接到 $IP ---"
    # 因为配置了SSH密钥，现在可以直接连接，不再需要密码
    ssh -o StrictHostKeyChecking=no "$REMOTE_USER"@"$IP" "cd $REMOTE_REPO_PATH && git pull"

    # 检查远程 git pull 是否成功
    if [ $? -eq 0 ]; then
        echo "在 $IP 上成功拉取代码。"
    else
        echo "错误：在 $IP 上拉取代码失败。"
    fi
    echo "--- 已从 $IP断开 ---"
    echo ""
done

echo "所有远程服务器代码拉取完成！"