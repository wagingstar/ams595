// Q4c

#include <iostream>
#include <vector>

bool isprime(int n) {
    if (n <= 1) {
        return false;
    }
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

std::vector<int> prime_factorize(int n) {
    std::vector<int> answer;
    for (int i = 2; i <= n; i++) {
        while (n % i == 0 && isprime(i)) {
            answer.push_back(i);
            n /= i;
        }
    }
    return answer;
}

void print_vector(const std::vector<int>& v) {
    if(v.empty()) {
        std::cout << "No prime factors" << std::endl;
        return;
    }
    
    for(int i = 0; i < v.size() - 1; i++) {
        std::cout << v[i] << " * ";
    }
    std::cout << v[v.size() - 1] << std::endl;
}

void test_prime_factorize() {
    print_vector(prime_factorize(2));
    print_vector(prime_factorize(72));
    print_vector(prime_factorize(196));
}

int main() {
    test_prime_factorize();
    return 0;
}
