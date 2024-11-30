//
// Created by fred on 30.11.2024.
//
#include <stdio.h>

void doWhileEx() {
    float p = 3.14, r = 10, c;
    do {
        c = 2 * p * r;
        r = r + 1.3;
        printf ("c = %f\n", c);
    } while (r <= 49);
}
void whileEx() {
    float p = 3.14, r = 10, c;
    while (r <= 49) {
        c = 2 * p * r;
        r = r + 1.3;
        printf ("c = %f\n", c);
    }
}
void forEx() {
    float p = 3.14, c;
    for (float r = 10; r <= 49; r += 1.3) {
        c = 2 * p * r;
        printf ("c = %f\n", c);
    }
}
