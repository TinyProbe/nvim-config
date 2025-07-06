int arr[] = { 15, 33, 59, 104, 802 };
for (auto const &n : arr) {
    int l = 0, r = INT_MAX;
    while (l + 1 < r) {
        int m = (l + r) / 2;
        if (m > n)
            r = m;
        else
            l = m;
    }
    cout << l << ' ' << r << '\n';
}
