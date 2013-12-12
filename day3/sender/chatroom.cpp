#include <SimpleAmqpClient/SimpleAmqpClient.h>
#include <iostream>
#include <string>
#include <thread>
#include <random>

using namespace AmqpClient;

void send(std::string message)
{
    Channel::ptr_t channel;
    channel = Channel::Create("192.168.8.102");
    std::string e_name = "tieto-chatroom";

    //preparation
    channel->DeclareExchange(e_name, Channel::EXCHANGE_TYPE_FANOUT);

    channel->BasicPublish(e_name, "chat", BasicMessage::Create(std::string("Rafal: ") + message));
}

void send_in_loop()
{
    // Seed with a real random value, if available
    std::random_device rd;

    // Choose a random mean between 1 and 6
    std::default_random_engine e1(rd());
    std::uniform_int_distribution<int> uniform_dist(1, 6);

    while (true)
    {
        std::this_thread::sleep_for(std::chrono::seconds(3));
        send(std::to_string(uniform_dist(e1)));
    }
}

int main()
{
    std::thread th(send_in_loop);
    std::string t;
    while(true)
    {
        getline(std::cin, t, '\n');
        send(t);
    }
    th.join();
}
