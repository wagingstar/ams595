#ifndef PI_APPROX_H
#define PI_APPROX_H

struct PiResults {
    double approx;
    double error;
};

PiResults pi_approx(int N);

#endif
