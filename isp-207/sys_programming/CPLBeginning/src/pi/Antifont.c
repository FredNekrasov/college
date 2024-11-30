//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int antifont() {
    float p = 0, t;
    printf("enter t:");
    scanf("%f", &t);
    for (int i = 1; i < t; i++) {
        p = sqrt(2 + p);
    }
    p = pow(2, t) * sqrt(2 - p);
    printf(" π = %.10f\n", p);
    return 0;
}
