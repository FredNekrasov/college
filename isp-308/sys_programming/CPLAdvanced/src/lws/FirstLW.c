//
// Created by fred on 01.12.2024.
//
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

/*
 * В массиве M(20) целых чисел подсчитать количество четных и нечетных чисел
 */
int lw1Task1() {
    srand(time(nullptr));
    int n;
    printf("Enter the number of elements: \n");
    scanf_s("%d", &n);
    if (n <= 0) return printf("error");
    int even = 0, odd = 0, M[n];
    for (int i = 0; i < n; i++) {
        M[i] = rand() % 100;
        printf(" %d", M[i]);
    }
    for (int i = 0; i < n; i++) {
        if (M[i] % 2 == 0) even++; else odd++;
    }
    printf("\nCount of even numbers %d\nCount of odd numbers %d\n", even, odd);
    return 0;
}
/*
 * Задан массив целых чисел А(10, 6). Каждый отрицательный элемент массива заменить на его абсолютную величину
 */
int lw1Task2() {
    srand(time(nullptr));
    int n, m;
    printf("Enter the n and m: \n");
    scanf_s("%d%d", &n, &m);
    if (n <= 0 || m <= 0) return printf("error");
    int A[n][m], z = 1;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = z * rand() % 10;
            z = -z;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (A[i][j] < 0) A[i][j] = abs(A[i][j]);
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    return 0;
}
/*
 * Последовательность Фибоначчи образуется так: первый и второй член последовательности равны 1, каждый следующий равен сумме двух предыдущих.
 * Найти первое число в последовательности Фибоначчи, большее n
 */
int lw1Task3() {
    int a = 1, b, f = 0, n;
    printf("Enter the number: \n");
    scanf_s("%d", &n);
    if (n <= 0) return printf("error");
    printf("%d", f);
    while (f <= n) {
        b = a;
        a += f;
        f = b;
    }
    printf(", %d", f);
    return 0;
}