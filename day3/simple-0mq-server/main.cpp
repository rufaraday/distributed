#include <zmq.h>
#include "zhelpers.hpp"
#include <iostream>
#include <string>

int main()
{
    zmq::context_t context(1);
    zmq::socket_t socket(context, ZMQ_REP);
    socket.bind("tcp://*:5555");    //localhost

    while (true)
    {
        std::cout << "from client: " << s_recv(socket) << std::endl;       // s_recv - blocking operation
        s_send(socket, "World");
    }
}
