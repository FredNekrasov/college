//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int johnMachin() {
    float a, b, n, t = 3, z = 1, pi;
    printf("Enter the n: ");
    scanf("%f", &n);
    b = z / 5;
    a = z / 239;
    for (int i = 0; i < n; i++) {
        b = b - z / (t * pow(5, t));
        a = a - z / (t * pow(239, t));
        z = -z;
        t = t + 2;
    }
    pi = 4 * (4 * b - a);
    printf("%.8f", pi);
    return 0;
}