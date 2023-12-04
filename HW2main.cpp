#include <iostream>
#include <vector>
#include "pi_approx.h"
#include "approximations.h"

int main() {
    // Calling Q1
    PiResults pi_res_1 = pi_approx(10000);
    std::cout << "Pi Approximation: " << pi_res_1.approx << ", Error: " << pi_res_1.error << std::endl;

    // Callin Q2
    std::vector<int> nums = {101, 102, 103, 104, 105, 106, 107};
    double* approximations_res = approximations(nums);
    for (int i = 0; i < nums.size(); i++) {
        std::cout << "Pi Approximation for " << nums[i] << " intervals: " << approximations_res[i] << std::endl;
    }

    delete[] approximations_res;

    return 0;
}
