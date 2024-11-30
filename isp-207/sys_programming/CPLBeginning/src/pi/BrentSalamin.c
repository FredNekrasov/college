//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int brentSalamin() {
    float a = 1, a1, b = 1 / sqrt(2), n, t = 0.25, p = 1, pi;
    printf("Enter the n:");
    scanf("%f", &n);
    for (int i = 0; i < n; i++) {
        a1 = (a + b) / 2;
        t = t - p * pow(a - a1, 2);
        b = sqrt(a * b);
        a = a1;
        p = 2 * p;
    }
    pi = pow(a + b, 2) / (4 * t);
    printf("%.10f", pi);
    return 0;
}