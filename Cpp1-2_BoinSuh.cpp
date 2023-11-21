// Q2

#include <iostream>
#include <vector>

void print_vector(std::vector<int>& v) {
    for(int i = 0; i < v.size(); i++) {
        std::cout << v[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    std::vector<int> v = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    print_vector(v);
    return 0;
}