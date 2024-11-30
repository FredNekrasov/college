//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int johnWallis() {
    float pi = 1, n;
    printf("Enter the n: \n");
    scanf("%f", &n);
    for (int i = 1; i <= n; i++) {
        pi *= pow(2 * i, 2) / ((2 * i - 1) * (2 * i + 1));
    }
    pi *= 2;
    printf("The value of pi is: %.10f", pi);
    return 0;
}
