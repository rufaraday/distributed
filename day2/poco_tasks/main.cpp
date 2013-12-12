#include <Poco/Task.h>
#include <Poco/TaskManager.h>
#include <Poco/TaskNotification.h>
#include <Poco/Observer.h>
#include <iostream>

class SimpleTask : public Poco::Task
{
    int delay;
public:
    SimpleTask(const std::string& name, int delay) : Task(name), delay(delay)
    {}

    virtual void runTask()
    {
        for (int i = 0; i < 10; ++i)
        {
            setProgress(float(i)/10);
            if (sleep(delay))
                break;
        }
    }
};

class ProgressHandler
{
public:
    void onProgress(Poco::TaskProgressNotification *p)
    {
        std::cout << p->task()->name() << " progress: ";
        std::cout << p->progress() << std::endl;
        p->release();
    }

    void onFinished(Poco::TaskFinishedNotification *p)
    {
        std::cout << p->task()->name() << " finished" << std::endl;
        p->release();
    }
};

int main()
{
    Poco::TaskManager tm;
    ProgressHandler pm;

    tm.addObserver(Poco::Observer<ProgressHandler,
                   Poco::TaskProgressNotification> (pm, &ProgressHandler::onProgress));
    tm.addObserver(Poco::Observer<ProgressHandler,
                   Poco::TaskFinishedNotification> (pm, &ProgressHandler::onFinished));

    tm.start(new SimpleTask("Task 1", 500));
    tm.start(new SimpleTask("Task 2", 700));
    tm.joinAll();
}
