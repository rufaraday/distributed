#include <iostream>
#include <boost/thread.hpp>
#include <chrono>

long counter = 0;
boost::mutex mtx;

void increment()
{
    for (int i = 0; i < 1000000; ++i)
    {
        boost::lock_guard<boost::mutex> lk(mtx);
        ++counter;
    }
}

int main(int argc, char *argv[])
{
    //increment();
    //increment();
    //increment();
    //increment();
    boost::thread_group threads;
    for (int i = 0; i < 4; ++i)
    {
        threads.create_thread(increment);
    }
    threads.join_all();
    std::cout << "Counter: " << counter << std::endl;
    return 0;
}
