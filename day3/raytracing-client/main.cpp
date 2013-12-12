#include <zmq.h>
#include "zhelpers.hpp"
#include <iostream>
#include <string>

int main()
{
    zmq::context_t context(1);
    zmq::socket_t socket(context, ZMQ_REQ);
    socket.connect("tcp://localhost:5555");    //localhost

    for (int i = 0; i < 10; ++i)
    {
        s_send(socket, "Hello");
        std::cout << "received: " << s_recv(socket) << std::endl;
    }
}
