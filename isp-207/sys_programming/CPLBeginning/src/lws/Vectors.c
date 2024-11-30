//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/*
 * 1. Найти максимальный и минимальный элементы массива.
 * 2. Переставить местами максимальный и минимальный элементы.
 * 3. Найти количество различных элементов в массиве. Вывести значения неповторяющихся элементов.
 */
int lw3P1() {
    srand(time(NULL));
    int n;
    printf("Enter the number of elements: \n");
    scanf("%d", &n);
    if (n <= 0) return printf("Enter a number greater than 0\n");
    int array[n];
    printf("array:");
    for (int i = 0; i < n; i++) {
        array[i] = ((RAND_MAX) / rand());
        printf(" %d", array[i]);
    }
    // 1
    int max = array[0], min = array[0], iMin = 0, iMax = 0, a, c = 0;
    for (int i = 1; i < n; i++) {
        if (array[i] > max) {
            max = array[i];
            iMax = i;
        }
        if (array[i] < min) {
            min = array[i];
            iMin = i;
        }
    }
    printf("\n max element = %d\n min element = %d", array[iMax], array[iMin]);
    // 2
    int temp = array[iMax];
    array[iMax] = array[iMin];
    array[iMin] = temp;
    printf("\n Swapping the max and min elements\n");
    for (int i = 0; i < n; i++) printf(" %d", array[i]);
    // 3
    printf("\n Unique elements: ");
    for (int i = 0; i < n; i++) {
        a = 1;
        for (int j = 0; j < n; j++) {
            if ((array[i] == array[j]) && (i != j)) a = 0;
        }
        if (a == 1) {
            printf(" %d", array[i]);
            c++;
        }
    }
    printf("\n Count of unique elements in array = %d", c);
    return 0;
}
/*
 * В одномерном массиве, состоящем из п вещественных элементов, вычислить:
 * 1) сумму отрицательных элементов массива;
 * 2) произведение элементов массива, расположенных между максимальным и минимальным элементами.
 */
int lw3P2() {
    srand(time(NULL));
    int n;
    printf("Enter the number of elements: \n");
    scanf("%d", &n);
    if (n <= 0) return printf("error");
    float array[n], z = 1;
    for (int i = 0; i < n; i++) {
        array[i] = (z * (float)(RAND_MAX) / (float)rand());
        z = -z;
        printf(" %.2f", array[i]);
    }
    int iMin = 0, iMax = 0;
    float s = 0, max = array[0], min = array[0];
    for (int i = 0; i < n; i++) {
        if (array[i] > max) {
            max = array[i];
            iMax = i;
        }
        if (array[i] < min) {
            min = array[i];
            iMin = i;
        }
    }
    printf("\n max element = %.1f\n min element = %.1f", array[iMax], array[iMin]);
    for (int i = 0; i < n; i++) {
        if (array[i] < 0) s += array[i];
    }
    printf("\n sum of negative elements = %.1f", s);
    if (iMax > iMin) {
        for (int i = iMin; i < iMax; i++) {
            z *= array[i];
        }
    } else {
        for (int i = iMax; i < iMin; i++) {
            z *= array[i];
        }
    }
    printf("\n multiplication of elements between max and min = %.1f\n", z);
    return 0;
}