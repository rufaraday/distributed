#include <iostream>
#include <string>
#include <boost/filesystem.hpp>
#include <boost/thread.hpp>
#include "thread_safe_queue.hpp"

class ReduceFileSize
{
    std::string path_;
    std::string filter_;

    ThreadSafeQueue<boost::filesystem::path> prod_queue;
    ThreadSafeQueue<long> map_queue;

    boost::thread_group threads;

    boost::promise<long> promise_;

    size_t n_of_mappers;

    //long total_size;

    void producer()
    {
        boost::filesystem::recursive_directory_iterator it(path_);
        boost::filesystem::recursive_directory_iterator end;
        for ( ; it != end ; ++it)
        {
            if(boost::filesystem::is_regular_file(*it))
                if(boost::filesystem::extension(*it) == filter_)
                    prod_queue.push(*it);
        }
        for (int i = 0; i < n_of_mappers; ++i)
        {
            prod_queue.push(boost::filesystem::path());
        }
    }

    void mapper()
    {
        boost::filesystem::path end = boost::filesystem::path();
        boost::filesystem::path current;
        while(true)
        {
            prod_queue.wait_and_pop(current);
            if (current == end)
            {
                map_queue.push(-1);
                break;
            }
            map_queue.push(boost::filesystem::file_size(current));
        }
    }

    void reducer()
    {
        int stopper = 0;
        long size;
        long total_size = 0;
        while(stopper < n_of_mappers)
        {
            map_queue.wait_and_pop(size);
            if (size != -1)
            {
                total_size += size;
            } else {
                stopper += 1;
            }
        }
        promise_.set_value(total_size);
    }

public:
    boost::unique_future<long> run()
    {
        threads.create_thread(boost::bind(&ReduceFileSize::producer, this));
        //producer();
        for (int i = 0; i < n_of_mappers; ++i)
            threads.create_thread(boost::bind(&ReduceFileSize::mapper, this));
        //mapper();
        threads.create_thread(boost::bind(&ReduceFileSize::reducer, this));
        //reducer();
        //th_producer.join();
        //mappers.join_all();
        //th_reducer.join();
        return promise_.get_future();
        //return total_size;
    }

    ReduceFileSize(const std::string& path, const std::string& filter) :
        path_(path), filter_(filter), n_of_mappers(4)
    {}

    ~ReduceFileSize()
    {
        threads.join_all();
    }
};

int main()
{
    /*boost::filesystem::recursive_directory_iterator it("/home/developer/");
    boost::filesystem::recursive_directory_iterator end;
    for ( ; it != end ; ++it)
    {
        if(boost::filesystem::is_regular_file(*it))
            // boost::filesystem::path = *it
        {
            if(boost::filesystem::extension(*it) == ".cpp")
                std::cout << *it << " : " << boost::filesystem::file_size(*it) << std::endl;
        }
    }*/

    ReduceFileSize rfs("/home/developer/day1", ".cpp");
    boost::unique_future<long> future = rfs.run();

    std::cout << "Total filesizes is: " << future.get() << std::endl;
}
