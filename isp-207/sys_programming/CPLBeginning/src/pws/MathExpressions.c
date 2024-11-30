//
// Created by fred on 29.11.2024.
//
#include <stdio.h>
#include <math.h>
#include <windows.h>

int mathExpressions() {
    printf("Hello, World!\n");
    SetConsoleOutputCP(CP_UTF8);
    float a, b, c, x, y, z, s;
    printf("Введите четыре числа:\n");
    scanf_s("%f%f%f%f", &a, &b, &c, &x);
    y = (float)(pow(a,3) * x - cos(x)) / (x + b * c);
    z = -1 * pow(10,-2) * (b * c / x) * pow(cos(x),2) * sqrt(pow(a,3) * x);
    s = y + z;
    printf("y = %f\n", y);
    printf("z = %f\n", z);
    printf("s = %f\n", s);
    return 0;
}
