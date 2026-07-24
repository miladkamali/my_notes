#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <chrono>

int main() {
    const int ITERATIONS = 100'000;
    
    std::mutex mtx;
    std::condition_variable cv;
    // 0 = A's turn, 1 = B's turn, -1 = Stop
    int turn = 0; 

    // Thread B (The Responder)
    std::thread thread_b([&]() {
        while (true) {
            std::unique_lock<std::mutex> lock(mtx);
            // Wait while it is A's turn
            cv.wait(lock, [&]{ return turn != 0; });
            
            if (turn == -1) break; // Exit condition
            
            turn = 0; // Give turn back to A
            lock.unlock(); // Drop lock before notifying to reduce RTT overhead
            cv.notify_one();
        }
    });

    // Thread A (The Measurer)
    auto total_rtt = std::chrono::nanoseconds(0);

    for (int i = 0; i < ITERATIONS; ++i) {
        auto start = std::chrono::high_resolution_clock::now();
        
        {
            std::lock_guard<std::mutex> lock(mtx);
            turn = 1; // Give turn to B
        }
        cv.notify_one();
        
        {
            std::unique_lock<std::mutex> lock(mtx);
            // Wait while it is B's turn
            cv.wait(lock, [&]{ return turn == 0; });
        }
        
        auto end = std::chrono::high_resolution_clock::now();
        total_rtt += std::chrono::duration_cast<std::chrono::nanoseconds>(end - start);
    }

    // Stop Thread B
    {
        std::lock_guard<std::mutex> lock(mtx);
        turn = -1;
    }
    cv.notify_one();
    thread_b.join();

    std::cout << "Average C++ CV RTT: " 
              << total_rtt.count() / ITERATIONS << " ns\n";

    return 0;
}
