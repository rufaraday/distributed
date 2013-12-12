#include <SimpleAmqpClient/SimpleAmqpClient.h>
#include <iostream>
#include <string>
#include <thread>

using namespace AmqpClient;

void receive(int id)
{
    Channel::ptr_t channel;
    channel = Channel::Create("192.168.8.102");
    std::string e_name = "tieto-chatroom";

    //preparation
    channel->DeclareExchange(e_name, Channel::EXCHANGE_TYPE_FANOUT);
    std::string q_name = channel->DeclareQueue("", false, true, false);
    channel->BindQueue(q_name, e_name, "chat");

    channel->BasicConsume(q_name, "");
    Envelope::ptr_t env;
    while (true)
    {
        if (channel->BasicConsumeMessage(env, -1))
        {
            std::cout << "Received by " << id << ": " <<
                         env->Message()->Body() << " [" <<
                         env->Exchange() << "]" << std::endl;

        } else {
            std::cout << "queue empty" << std::endl;
            break;
        }
    }
}

int main()
{
    receive(1);
}
