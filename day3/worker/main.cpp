#include <zmq.h>
#include "zhelpers.hpp"
#include "smallpt_lib.hpp"
#include <iostream>
#include <string>

int main()
{
    zmq::context_t context(1);

    zmq::socket_t socket_rec(context, ZMQ_PULL);
    socket_rec.connect("tcp://192.168.8.102:5557");    //localhost

    zmq::socket_t socket_sink(context, ZMQ_PUSH);
    socket_sink.connect("tcp://192.168.8.102:5558");    //localhost

    int line;
    std::string scanned_line;

    while (true)
    {
        line = std::stoi(s_recv(socket_rec));
        scanned_line = scan_line(line);
        std::cout << "received: " << line << std::endl;
        s_send(socket_sink, std::string("head3: ") + std::to_string(line) + " :: " + scanned_line);
    }
}
