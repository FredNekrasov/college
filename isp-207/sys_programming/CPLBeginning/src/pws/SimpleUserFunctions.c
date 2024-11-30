//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

float Y(float a, float b, float c, float x) {
    return (pow(a, 3) * x - cos(x)) / (x + b * c);
}
float Z(float a, float b, float c, float x) {
    return -1 * pow(10, -2) * (b * c / x) * pow(cos(x), 2) * sqrt(pow(a, 3) * x);
}
int simpleUserFunctions() {
    float a, b, c, x, y, z, s;
    printf("Please, enter value a, b, c, x\n");
    scanf ("%f%f%f%f", &a, &b, &c, &x);
    y = Y(a, b, c, x);
    z = Z(a, b, c, x);
    printf("y = %f\nz = %f\n", y, z);
    s = y + z;
    printf("s = %f\n", s);
    return 0;
}
