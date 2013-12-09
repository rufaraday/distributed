#include <iostream>

#include "threadpool.h"

void newTask(int i)
{
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "newTask " << i << std::endl;
}

int main()
{
    ThreadPool tp;

    tp.add_task( []() { std::cout << "Task1" << std::endl;} );
    tp.add_task( []() { newTask(1); } );

}
