#include <cmath>
#include "pi_approx.h"

PiResults pi_approx(int N) {
    double delta_x = 1.0 / N;
    double sum = 0.0;
    double x_k, x_k_minus_1;

    for (int k = 1; k <= N; k++) {
        x_k = k * delta_x;
        x_k_minus_1 = (k - 1) * delta_x;

        sum += delta_x * ((sqrt(1 - pow(x_k, 2)) + sqrt(1 - pow(x_k_minus_1, 2))) / 2);
    }

    double pi_approx = 4 * sum;
    double error = abs(M_PI - pi_approx);

    PiResults res;
    res.approx = pi_approx;
    res.error = error;

    return res;
}