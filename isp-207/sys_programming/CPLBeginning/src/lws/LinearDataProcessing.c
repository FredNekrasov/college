//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>

void lw1Task1() {
    float x1, x2;
    printf("Enter values of x1 and x2\n");
    scanf("%f%f", &x1, &x2);
    float y = (exp(-x1) + exp(-x2)) / 2;
    printf("y = %f", y);
}
int lw1Task2() {
    float a, b, c;
    printf("Enter values of a, b, c:\n");
    scanf("%f%f%f", &a, &b, &c);
    if (a + b <= c || b + c <= a || a + c <= b) return printf("error");
    float p = (a + b + c) / 2;
    float s = sqrt (p * (p - a) * (p - b) * (p - c));
    printf("p = %f\ns = %f\n", p, s);
    return 0;
}
int lw1Task3() {
    float a, b, c;
    printf("Enter values of a, b, c:\n");
    scanf("%f%f%f", &a, &b, &c);
    if (a + b <= c || b + c <= a || a + c <= b) return printf("error");
    float p = (a + b + c) / 2;
    float s = sqrt (p * (p - a) * (p - b) * (p - c));
    float ha = (2 * s) / a;
    float hb = (2 * s) / b;
    float hc = (2 * s) / c;
    printf("p = %f\ns = %f\nha = %f\thb = %f\thc = %f\n", p, s, ha, hb, hc);
    return 0;
}
int lw1Task4() {
    float R, r, l, h;
    printf("Enter values of R, r, l, h:\n");
    scanf("%f%f%f%f", &R, &r, &l, &h);
    if (R < r || r <= 0 || l < h || h <= 0) return printf("error");
    float pi = 3.14;
    float s = pi * (R + r) * l + pi * pow(R, 2) + pi * pow(r, 2);
    float v = (1.0 / 3.0) * (pow(R, 2) + pow(r, 2) + R * r) * h * pi;
    printf("s = %.2f\n", s);
    printf("v = %.2f\n", v);
    return 0;
}
int lw1Task5() {
    float w, f;
    printf("Enter values of w and f \n");
    scanf("%f%f", &w, &f);
    if (f <= 0 || f > 1 || w <= 0 || w > 1) return printf("error");
    float a = 1, pi = 3.14;
    float x = (pi / (2 - f));
    float y = (a * exp(-a * w * x) * sin(w * x));
    printf("\nx = %f", x);
    printf("\ny = %f", y);
    return 0;
}
