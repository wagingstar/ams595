#include <vector>
#include "pi_approx.h"
#include "approximations.h"

double* approximations(std::vector<int> nums) {
    double* results = new double[nums.size()];

    for (int i = 0; i < nums.size(); i++) {
        PiResults pi_res = pi_approx(nums[i]);
        results[i] = pi_res.approx;
    }

    return results;
}