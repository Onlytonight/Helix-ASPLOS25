#ifndef ZMQ_COMM_POLLER_H
#define ZMQ_COMM_POLLER_H

#include <utility>
#include <zmq.hpp>
#include <iostream>
#include <vector>

#include "utils.h"
#include "msg.h"


class PollingClient {
public:
    PollingClient(zmq::context_t &_context, std::vector<std::string> &_server_addresses) : context(_context) {
        // initialize socket
        server_addresses = _server_addresses;
        subscriber = zmq::socket_t(context, ZMQ_SUB);
        for (const auto &addr: server_addresses) {
            subscriber.connect(addr);
            std::cout << "Receiver connected to address: " << addr << "\n";
        }
        subscriber.set(zmq::sockopt::subscribe, "");  // subscribe all messages
    }

    Header poll_once(zmq::message_t &buffer_msg, int time_out = 10) {
        // header will be returned
        // buffer will be put into buffer_msg, access it with buffer_msg.data()

#if (CPPZMQ_VERSION_MAJOR > 4 || (CPPZMQ_VERSION_MAJOR == 4 && CPPZMQ_VERSION_MINOR >= 3))
        // --- 新的 API (cppzmq v4.3.0 及以上版本) ---
        
        // 1. 在需要时创建 pollitem 数组
        std::vector<zmq::pollitem_t> items = {
            { subscriber, 0, ZMQ_POLLIN, 0 }
        };

        // 2. 调用静态的 zmq::poll 函数
        zmq::poll(items, std::chrono::milliseconds(time_out));

        // 3. 检查返回的事件
        if (items[0].revents & ZMQ_POLLIN) {
            zmq::message_t header_msg;
            // 直接从成员变量 subscriber 接收消息
            auto _val_1 = subscriber.recv(header_msg, zmq::recv_flags::none);
            auto _val_2 = subscriber.recv(buffer_msg, zmq::recv_flags::none);
            Header header = Header::deserialize(header_msg);
            return header;
        } else {
            // return an empty header, indicating no message received
            return {};
        }

#else
        // --- 旧的 API (兼容 cppzmq v4.3.0 以下版本) ---
        
        // 1. 创建一个 poller
        zmq::poller_t<> poller;
        poller.add(subscriber, zmq::event_flags::pollin);
        
        // 2. poll 一个消息
        std::vector<zmq::poller_event<>> events(1);
        size_t rc = poller.wait_all(events, std::chrono::milliseconds(time_out));
        Assert(rc == 0 || rc == 1, "Bad receive count!");

        // 3. 处理结果
        if (rc == 1) {
            zmq::message_t header_msg;
            auto _val_1 = events[0].socket.recv(header_msg, zmq::recv_flags::none);
            auto _val_2 = events[0].socket.recv(buffer_msg, zmq::recv_flags::none);
            Header header = Header::deserialize(header_msg);
            return header;
        } else {
            // return an empty header, indicating no message received
            return {};
        }
#endif
    }

private:
    std::vector<std::string> server_addresses;
    zmq::context_t &context;
    zmq::socket_t subscriber;
};


class PollServer {
public:
    PollServer(zmq::context_t &_context, std::string &bind_address) : context(_context) {
        // initialize socket
        publisher = zmq::socket_t(context, ZMQ_PUB);
        publisher.bind(bind_address);
        std::cout << "Sender bound to address: " << bind_address << "\n";
    }

    void send(const Header &header, zmq::message_t &buffer_msg) {
        // header: header of the message
        // buffer_msg: message content
        zmq::message_t header_msg = header.serialize();
        publisher.send(header_msg, zmq::send_flags::sndmore);
        publisher.send(buffer_msg, zmq::send_flags::none);
    }

private:
    zmq::context_t &context;
    zmq::socket_t publisher;
};


#endif //ZMQ_COMM_POLLER_H
