#include <Poco/Thread.h>
#include <Poco/ThreadPool.h>
#include <Poco/Runnable.h>
#include <iostream>

class Hello : public Poco::Runnable
{
    virtual void run()
    {
        std::cout << "Hello World" << std::endl;
    }
};

int main()
{
    Hello runnable;
    //Poco::Thread thread;
    //thread.start(runnable);
    //thread.join();
    Poco::ThreadPool::defaultPool().start(runnable);
    Poco::ThreadPool::defaultPool().joinAll();
}
