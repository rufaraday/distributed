#pragma once

#include "thread_safe_queue.hpp"
#include <thread>
#include <vector>
#include <future>

typedef std::function<void()> Task;

class ThreadPool;

class Worker;

    