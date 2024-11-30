//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

int luiHui() {
    float p = 1;
    for (int i = 0; i < 8; i++) {
        p = sqrt(2 + p);
    }
    p = 3 * pow(2, 8) * sqrt(2 - p);
    printf("π = %f\n", p);
    return 0;
}
