//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/*
 * Транспонировать заданную матрицу А(N, N)
 */
int lw4Task1() {
    srand(time(NULL));
    int n;
    printf("Enter the number of rows and columns\n");
    scanf("%d", &n);
    if (n <= 0) return printf("error");
    int A[n][n];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            A[i][j] = rand() % 10;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int j = 0; j < n; j++) {
        for (int i = 0; i < n; i++) {
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    return 0;
}
/*
 * Найти сумму двух матриц А(N, M) и В(N, M)
 */
int lw4Task2() {
    srand(time(NULL));
    int n, m;
    printf("Enter the number of rows and columns \n");
    scanf("%d%d", &n, &m);
    if (n <= 0 || m <= 0 || n == m) return printf("error");
    int A[n][m], B[n][m], C[n][m];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = rand() % 10;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            B[i][j] = rand() % 10;//(RAND_MAX / rand());
            printf(" %d", B[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            C[i][j] = A[i][j] + B[i][j];
            printf(" %d", C[i][j]);
        }
        printf("\n");
    }
    return 0;
}
/*
 * Найти произведение двух матриц А(N, M) и В(M, K)
 */
int lw4Task3() {
    srand(time(NULL));
    int n, m, k;
    printf("Enter the n, m and k \n");
    scanf("%d%d%d", &n, &m, &k);
    if (n <= 0 || m <= 0 || k <= 0) return printf("error");
    int A[n][m], B[m][k], C[n][k];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = rand() % 10;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < k; j++) {
            B[i][j] = rand() % 10;
            printf(" %d", B[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < k; j++) {
            C[i][j] = 0;
            for (int f = 0; f < m; f++) {
                C[i][j] += A[i][f] * B[f][j];
            }
            printf(" %d", C[i][j]);
        }
        printf("\n");
    }
    return 0;
}
/*
 * Найти произведение матрицы А(N, M) на вектор В(N)
 */
int lw4Task4() {
    srand(time(NULL));
    int n, m;
    printf("Enter the number of rows and columns\n");
    scanf("%d%d", &n, &m);
    if (n <= 0 || m <= 0 || n == m) return printf("error");
    int A[n][m], B[n], C[n][m];
    printf("Matrix A:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = rand() % 10;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    printf("Vector B:\n");
    for (int i = 0; i < n; i++) {
        B[i] = rand() % 10;
        printf(" %d", B[i]);
    }
    printf("\n");
    printf("Matrix C:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            C[i][j] = A[i][j] * B[i];
            printf(" %d", C[i][j]);
        }
        printf("\n");
    }
    return 0;
}
/*
 * В матрице А(N, M) найти номер строки, в которой сумма элементов наибольшая
 */
int lw4Task5() {
    srand(time(NULL));
    int n, m;
    printf("Enter the n and m \n");
    scanf("%d%d", &n, &m);
    if (n <= 0 || m <= 0 || n == m) return printf("error");
    int A[n][m], b = 1, s = 0, d;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = rand() % 10;
            s += A[i][j];
            printf(" %d", A[i][j]);
        }
        if (s > b) {
            b = s;
            d = i + 1;
        }
        s = 0;
        printf("\n");
    }
    printf("In %d row there is the largest sum of elements = %d", d, b);
    return 0;
}
/*
 * В матрице А(N, M) переставить местами строки содержащие первый максимальный элемент и последний минимальный
 */
int lw4Task6() {
    srand(time(NULL));
    int n, m;
    printf("Enter the n and m \n");
    scanf("%d%d", &n, &m);
    if (n <= 0 || m <= 0 || n == m) return printf("error");
    int A[n][m];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            A[i][j] = rand() % 10;
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    int min = A[0][0], max = A[0][0], iMin = 0, iMax = 0;
    printf("\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (A[i][j] > max) {
                max = A[i][j];
                iMax = i;
            }
            if (A[i][j] <= min) {
                min = A[i][j];
                iMin = i;
            }
        }
    }
    for (int j = 0; j < m; j++) {
        int temp = A[iMin][j];
        A[iMin][j] = A[iMax][j];
        A[iMax][j] = temp;
    }
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            printf(" %d", A[i][j]);
        }
        printf("\n");
    }
    return 0;
}