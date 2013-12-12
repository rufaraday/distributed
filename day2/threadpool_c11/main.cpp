#include <iostream>
#include <string>
#include "threadpool.h"

void hello()
{
    std::cout << "Hello!" << std::endl;
}

void parametrized(int number)
{
    std::cout << "Here's the parameter: " << number << std::endl;
}

int main()
{
    ThreadPool tpool(4);

    std::cout << "Start" << std::endl;

    tpool.submit(&hello);
    tpool.submit( []() {std::cout << "Another" << std::endl;} );
    tpool.submit(std::bind(&parametrized, 42));
    tpool.submit( []() {parametrized(42);});

    std::future<int> f = tpool.submit<int>([]() { return 42;});
    // broken - package_task can die before future#get()
    std::cout << "Future result: " << f.get() << std::endl;
}
