//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int nilakanthaSeries() {
    float i = 2, s = 3, z = 1, n;
    printf("Enter the value of n: ");
    scanf("%f", &n);
    while (i <= n) {
        s += (4 * z) / (i * (i + 1) * (i + 2));
        i += 2;
        z = -z;
    }
    printf("pi = %.10f\n", s);
    return 0;
}
