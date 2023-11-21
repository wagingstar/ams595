// Q1

#include <iostream>
#include <string>

using namespace std;

int main() {
    int n;
    std::cout << "Enter a number: ";
    std::cin >> n;
    
    switch(n) {
        case -1:
            std::cout << "negative one";
            break;
        case 0:
            std::cout << "zero";
            break;
        case 1:
            std::cout << "positive one";
            break;
        default:
            std::cout << "other value";
            break;
    }
    return 0;
}