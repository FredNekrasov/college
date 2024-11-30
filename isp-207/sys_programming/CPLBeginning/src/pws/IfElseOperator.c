//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

float Y(float a, float b, float c, float x) {
    return (pow(a, 3) * x - cos(x)) / (x + b * c);
}
float Z(float a, float b, float c, float x) {
    return -1 * pow(10, -2) * (b * c / x) * cos(pow(x,2)) * sqrt (pow (a, 3) * x);
}
int ifElseOperator() {
    float a, b, c, x;
    printf("a, b, c, x\n");
    scanf ("%f%f%f%f", &a, &b, &c, &x);
    if ((x + b * c == 0) || (x == 0) || ((pow(a, 3) * x) < 0)) return printf("error");
    float y = Y(a, b, c, x);
    float z = Z(a, b, c, x);
    float s = y + z;
    printf("y = %f\nz = %f\ns = %f\n", y, z, s);
    return 0;
}
