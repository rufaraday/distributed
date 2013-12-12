#include <iostream>
#include <thread>
#include <vector>
#include <algorithm>
#include <chrono>
#include <boost/thread.hpp>

template <typename It, typename T>
void ref_accumulate(It first, It last, T& result)
{
    result = std::accumulate(first, last, result);
}

template <typename It, typename T>
T parallel_accumulate(It first, It last, T init, T threads)
{
    std::cout << "threads no: " << threads << std::endl;

    int vector_length = std::distance(first, last);
    int hw_thread = threads;
    int block_size = vector_length/hw_thread;
    std::vector<T> results(hw_thread);

    boost::thread_group thd_group;

    It start = first;
    It end = first + block_size;

    for(int i = 0; i < hw_thread; ++i)
    {
        thd_group.create_thread(
                    boost::bind(
                        ref_accumulate<It, T>,
                        start,
                        end,
                        boost::ref(results[i])
                        )
                    );
        start = end;
        if (i == hw_thread-1) {
            end = end + block_size;
        } else {
            end = last;
        }
    }

    thd_group.join_all();

    return std::accumulate(results.begin(), results.end(), init);
}

int main(int argc, char *argv[])
{
    std::cout << "Hardware threads: " << boost::thread::hardware_concurrency() << std::endl;
    const size_t SIZE = 5000;
    std::vector<long> v(SIZE);
    for (size_t i = 0; i < SIZE; ++i)
    {
        v[i] = i;
    }
    auto start = std::chrono::high_resolution_clock::now();
    std::cout << "std acc: " << std::accumulate(v.begin(), v.end(), 0) << std::endl;
    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "Elapsed: " << std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count() << std::endl;
    start = std::chrono::high_resolution_clock::now();
    std::cout << "prl acc: " << parallel_accumulate(v.begin(), v.end(), 0, 6) << std::endl;
    end = std::chrono::high_resolution_clock::now();
    std::cout << "Elapsed: " << std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count() << std::endl;
}
