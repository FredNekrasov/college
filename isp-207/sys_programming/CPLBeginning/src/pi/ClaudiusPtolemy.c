//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int claudiusPtolemy() {
    float r = 1, n = 720, b, pi, s;
    s = 0.01745329 * 180;
    b = r * sinf(s / n);
    pi = b * n;
    printf(" %f\n", pi);
    return 0;
}
