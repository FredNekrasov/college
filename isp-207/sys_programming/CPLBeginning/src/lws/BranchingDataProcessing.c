//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

/*
 * Дан радиус окружности. Найти длину окружности, её диаметр и площадь круга
 * d = 2 * r
 * c = 2 * pi * r
 * s = pi * r^2
 */
int lw2Task1() {
    float r, p = 3.14;
    printf("Enter the radius:\n");
    scanf("%f", &r);
    if (r <= 0) return printf("error");
    float d = 2 * r;
    float c = 2 * p * r;
    float s = p * (r * r);
    printf ("d = %f\nc = %f\ns = %f\n", d, c, s);
    return 0;
}
/*
 * Треугольник задан координатами своих вершин. Найти периметр и площадь треугольника
 */
int lw2Task2() {
    float x1, x2, x3, y1, y2, y3;
    printf("Enter the coordinates of the triangle: \n");
    scanf("%f%f%f%f%f%f", &x1, &y1, &x2, &y2, &x3, &y3);
    if (x1 == x2 || y1 == y2 || x2 == x3 || y2 == y3 || x3 == x1 || y3 == y1) return printf("error");
    float a = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
    float b = sqrt(pow(x3 - x2, 2) + pow(y3 - y2, 2));
    float c = sqrt(pow(x1 - x3, 2) + pow(y1 - y3, 2));
    printf(" a = %f\n b = %f\n c = %f\n", a, b, c);
    float p = a + b + c;
    float s = fabs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2;
    printf(" p = %f\n s = %f\n", p, s);
    return 0;
}
/*
 * Возраст Тани - Х лет, а возраст Мити - Y лет.
 * Найти их средний возраст, а также определить, на сколько отличается возраст каждого ребенка от среднего значения
 */
int lw2Task3() {
    int x, y;
    printf("Enter the age of Tanya and Mitya:\n");
    scanf("%d%d", &x, &y);
    if (x <= 0 || y <= 0) return printf("error");
    float a = (x + y) / 2;
    float b = fabs(x - a);
    float c = fabs(y - a);
    printf ("Average age - %.2f\n", a);
    printf ("difference of Tanya's age from the average - %.2f\n", b);
    printf ("difference of Mitya's age from the average - %.2f\n", c);
    return 0;
}
/*
 * Вычислить значение логического выражения при следующих значениях логических величин A, B, C: А = Истина, В = Ложь, С = Ложь.
 * 1) А или В.
 * 2) А и В.
 * 3) В или С.
 */
void lw2Task4() {
    bool a, b, c, x, y, z;
    a = true;
    b = false;
    c = false;
    x = a || b;
    y = a && b;
    z = b || c;
    printf(" x = %d\n", x);
    printf(" y = %d\n", y);
    printf(" z = %d\n", z);
}
/*
 * Метод Монте-Карло для нахождения числа pi
 * pi = 4 * (количество точек в квадрате / количество точек в круге)
 */
void lw2Task5() {
    srand(time(NULL));
    float y, x, pi, n, n1 = 0;
    printf("Enter the number of points: \n");
    scanf("%f", &n);
    for (int i = 1; i < n; i++) {
        y = ((float)rand() / (float)(RAND_MAX)) * 2;
        x = ((float)rand() / (float)(RAND_MAX)) * 2;
        if ((pow((x - 1),2) + pow((y - 1),2)) <= 1) n1++;
    }
    pi = 4 * n1 / n;
    printf("pi = %f\n", pi);
}
/*
 * Пусть в прямоугольной системе координат задана точка M(x,y), для которой y != 0  x != 0.
 * Найти номер четверти плоскости, которой принадлежит заданная точка.
 * Считать, что номер N определяется по формуле:
 * N = 1, если x > 0 и y > 0
 * N = 2, если x < 0 и y > 0
 * N = 3, если x < 0 и y < 0
 * N = 4, если x > 0 и y < 0
 */
int lw2Task6() {
    int x, y;
    printf("Enter the coordinates of the point M: \n");
    scanf("%d%d", &x, &y);
    if (x == 0 || y == 0) return printf("error");
    if  (x < 0 && y < 0) {
        printf("the point M is in the 3rd quadrant\n");
    } else {
        if (x > 0 && y < 0) {
            printf("the point M is in the 4th quadrant\n");
        } else {
            if (x < 0 && y > 0) {
                printf("the point M is in the 2nd quadrant\n");
            } else printf("the point M is in the 1st quadrant\n");
        }
    }
    return 0;
}