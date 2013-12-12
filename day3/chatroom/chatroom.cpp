#include <SimpleAmqpClient/SimpleAmqpClient.h>
#include <iostream>
#include <string>
#include <thread>

using namespace AmqpClient;

void send()
{
    Channel::ptr_t channel;
    channel = Channel::Create("192.168.8.102");
    std::string e_name = "tieto-chatroom";

    //preparation
    channel->DeclareExchange(e_name, Channel::EXCHANGE_TYPE_FANOUT);

    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest1"));
    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest2"));
    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest3"));
    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest4"));
    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest5"));
    channel->BasicPublish(e_name, "chat", BasicMessage::Create("RTest6"));
}

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
    std::thread th1(receive, 1);
    std::thread th2(receive, 2);
    std::thread ths(send);
    th1.join();
    th2.join();
    ths.join();
}
