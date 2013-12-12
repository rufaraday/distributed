#include <iostream>
#include <boost/thread.hpp>
#include <queue>
#include "thread_safe_queue.hpp"

boost::mutex m;
boost::condition_variable cond;

//std::queue<int> queue;
ThreadSafeQueue<int> queue;

void producer()
{
    for(int i = 0; i < 10; ++i)
    {
        boost::this_thread::sleep_for(boost::chrono::seconds(1));
        std::cout << "Produced: " << i+1 << std::endl;
        //boost::lock_guard<boost::mutex> lk(m);
        queue.push(i+1);
        //cond.notify_one();
    }
    //finishing
    queue.push(0);
    queue.push(0);
    //cond.notify_all();
}

void consumer(int id)
{
    while(true)
    {
        //boost::unique_lock<boost::mutex> lk(m);
        //while(queue.empty())
        //{
            std::cout << id << " is waiting for producer..." << std::endl;
        //    cond.wait(lk);
        //}
        //int message = queue.front();
        //queue.pop();
        int message;
        queue.pop(message);
        std::cout << "Consumed: " << message << std::endl;
        if (!message)
            break;
    }
}

int main()
{
    boost::thread con1(&consumer, 1);
    boost::thread con2(&consumer, 2);

    boost::thread prod(&producer);

    prod.join();
    con1.join();
    con2.join();
}
