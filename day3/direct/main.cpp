#include <SimpleAmqpClient/SimpleAmqpClient.h>
#include <iostream>
#include <string>
#include <thread>

using namespace AmqpClient;

void send()
{
    Channel::ptr_t channel;
    channel = Channel::Create("192.168.8.102");
    std::string e_name = "tieto-test";
    std::string q_name = "tieto-queue";

    //preparation
    channel->DeclareExchange(e_name, Channel::EXCHANGE_TYPE_DIRECT);
    channel->DeclareQueue(q_name, false, true, false);
    channel->BindQueue(q_name, e_name, "log.important");

    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest1"));
    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest2"));
    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest3"));
    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest4"));
    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest5"));
    channel->BasicPublish(e_name, "log.important", BasicMessage::Create("RTest6"));
}

void receive(int id)
{
    Channel::ptr_t channel;
    channel = Channel::Create();
    std::string e_name = "tieto-test";
    std::string q_name = "tieto-queue";

    //preparation
    channel->DeclareExchange(e_name, Channel::EXCHANGE_TYPE_DIRECT);
    channel->DeclareQueue(q_name, false, true, false);
    channel->BindQueue(q_name, e_name, "log.important");

    channel->BasicConsume(q_name, "", true, true, false);
    Envelope::ptr_t env;
    while (true)
    {
        //BasicMessage::ptr_t msg = channel->BasicConsumeMessage()->Message();
        //std::cout << msg->Body() << std::endl;
        if (channel->BasicConsumeMessage(env, 500))
        {
            std::cout << "Received by " << id << ": " <<
                         env->Message()->Body() << " [" <<
                         env->Exchange() << "]" << std::endl;
            std::this_thread::sleep_for(std::chrono::seconds(1));

        } else {
            std::cout << "queue empty" << std::endl;
            break;
        }
    }
}

int main()
{
    //std::thread th1(receive, 1);
    //std::thread th2(receive, 2);
    std::thread ths(send);
    //th1.join();
    //th2.join();
    ths.join();
}
