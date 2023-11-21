// Q3

#include <iostream>

int main() {
    long long a = 1;
    long long b = 2;
    long long c = a + b;

    std::cout << a << " " << b << " ";

    while (c <= 4000000) {
        std::cout << c << " ";
        a = b;
        b = c;
        c = a + b;
    }

    return 0;
}