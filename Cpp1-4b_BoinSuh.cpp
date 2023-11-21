// Q4b

#include <iostream>
#include <vector>

std::vector<int> factorize(int n) {
    std::vector<int> answer;
    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            answer.push_back(i);
        }
    }
    return answer;
}

void print_vector(const std::vector<int>& v) {
    for(int i = 0; i < v.size(); i++) {
        std::cout << v[i] << " ";
    }
    std::cout << std::endl;
}

void test_factorize() {
    print_vector(factorize(2));
    print_vector(factorize(72));
    print_vector(factorize(196));
}

int main() {
    test_factorize();
    return 0;
}