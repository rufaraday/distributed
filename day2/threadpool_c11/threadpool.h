#include "thread_safe_queue.hpp"
#include <thread>
#include <vector>
#include <functional>
#include <future>

typedef std::function<void(void)> Task;

class Worker
{
    ThreadSafeQueue<Task> *queue;
public:
    Worker(ThreadSafeQueue<Task> *queue) : queue(queue)
    {}

    void operator()()
    {
        Task task;
        while(true)
        {
            queue->wait_and_pop(task);
            if (task != nullptr)
            {
                task();
            } else {
                queue->push(task);
                return;
            }
        }
    }
};

class ThreadPool
{
    ThreadSafeQueue<Task> queue;
    std::vector<std::thread> threads;
    int n_of_threads;

public:
    ThreadPool(int n) : n_of_threads(n)
    {
        //n_of_threads = std::thread::hardware_concurrency();
        for (int i = 0; i < n_of_threads; ++i)
            threads.emplace_back(Worker(&this->queue));
    }

    ~ThreadPool()
    {
        queue.push(nullptr);
        for (auto& thread : threads)
            thread.join();
    }

    template<class T, class F>
    std::future<T> submit(F f)
    {
        auto task = std::make_shared<std::packaged_task<T()>>(f);
        std::future<T> res = task->get_future();
        queue.push([task]() { (*task)(); });
        return res;
    }

    void submit(Task f)
    {
        queue.push(f);
    }
};
