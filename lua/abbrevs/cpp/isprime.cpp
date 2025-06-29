bool isprime(long long n) {
    static constexpr long long bases[] = {
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
    };
    static constexpr auto modMult = [](long long lhs, long long rhs, long long m) {
        return (long long)((__int128)lhs * rhs % m);
    };
    static constexpr auto modPow = [](long long n, long long e, long long m) {
        long long res = 1;
        n %= m;
        while (e > 0) {
            if ((e & 1) == 1)
                res = modMult(res, n, m);
            n = modMult(n, n, m);
            e >>= 1;
        }
        return res;
    };

    if (n == 2 || n == 3)
        return true;
    if (n < 2 || (n & 1) == 0)
        return false;

    long long d = n - 1;
    long long s = 0;
    while ((d & 1) == 0)
        d >>= 1, s += 1;

    for (auto const &e : bases) {
        if (e >= n) { break; }

        long long x = modPow(e, d, n);
        if (x == 1 || x == n - 1) { continue; }

        for (long long r = 0; r < s - 1; ++r) {
            x = modMult(x, x, n);
            if (x == n - 1) { goto NEXT; }
            if (x == 1) { return false; }
        }
        return false;
NEXT:
        continue;
    }
    return true;
}
