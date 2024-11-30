//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int viet() {
    float n, a = sqrt(2);
    printf("Enter the n:");
    scanf("%f", &n);
    float c = a / 2;
    for (int i = 0; i < n; i++) {
        a = sqrt(2 + a);
        c *= (a / 2);
    }
    float p = 2 / c;
    printf("%.10f", p);
    return 0;
}
