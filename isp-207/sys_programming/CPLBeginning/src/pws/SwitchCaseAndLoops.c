//
// Created by fred on 30.11.2024.
//
#include <stdio.h>
#include <math.h>
#include <windows.h>

void switchCaseAndLoops() {
    SetConsoleOutputCP(CP_UTF8);
    printf("* Организация программного меню *\n");
    int y = 0; // переменная, управляющая работой оператора switch
    float a = -0.5, b = 2, t, c;
    while (y != 4) {
        printf("\n МЕНЮ \n1 - Задача 1\n2 - Задача 2\n3 - Задача 3\n4 - Выход\nКакую задачу выберите\n");
        scanf_s("%i", &y);
        switch (y) {
            case 1:
                t = 0;
                while (t < 3) {
                    t += 0.15;
                    if (t < 1) {
                        c = 1;
                        printf("%f\n", c);
                    } else {
                        if (1 <= t && t <= 2) {
                            c = a * pow(t, 2) * log(t);
                            printf("%f\n", c);
                        } else {
                            if (t > 2) {
                                c = exp(a * t) * cos(b * t);
                                printf("%f\n", c);
                            }
                        }
                    }
                }
                break;
            case 2:
                t = 0;
                do {
                    t += 0.15;
                    if (t < 1) {
                        c = 1;
                        printf("%f\n", c);
                    } else {
                        if (1 <= t && t <= 2) {
                            c = a * pow(t, 2) * log(t);
                            printf("%f\n", c);
                        } else {
                            if (t > 2) {
                                c = exp(a * t) * cos(b * t);
                                printf("%f\n", c);
                            }
                        }
                    }
                } while (t < 3);
                break;
            case 3:
                for (t = 0; t < 3; t += 0.15) {
                    if (t < 1) {
                        c = 1;
                        printf("%f\n", c);
                    } else {
                        if (1 <= t && t <= 2) {
                            c = a * pow(t, 2) * log(t);
                            printf("%f\n", c);
                        } else {
                            if (t > 2) {
                                c = exp(a * t) * cos(b * t);
                                printf("%f\n", c);
                            }
                        }
                    }
                }
                break;
            case 4:
                printf("Работа программы завершается...\n");
                break;
            default:
                printf("\n Вы ввели неверное значение.\nПовторите ввод\n");
                break;
        } // конец оператора switch
    } // конец оператора цикла while
}