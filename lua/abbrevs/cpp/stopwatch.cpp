class StopWatch {
    std::chrono::time_point<std::chrono::steady_clock> tp;
public:
    StopWatch() : tp(std::chrono::steady_clock::now()) {}
    ~StopWatch() { std::cout << (std::chrono::steady_clock::now() - tp).count() << " ns" << std::endl; }
}   _;
