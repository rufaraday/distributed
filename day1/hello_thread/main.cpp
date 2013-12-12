#include <boost/thread.hpp>

void my_thread_func()
{
    std::cout << "My first thread..." << std::endl;
}

int main()
{
    boost::thread th(my_thread_func);
    th.join();
    std::cout << boost::thread::hardware_concurrency() << std::endl;
}
