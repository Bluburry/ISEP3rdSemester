#include "../asm.h"

int test_one() {
    int length = 10;
    int array[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int array2[length];
    int a = 0, b = 0;
    int *read = &a, *write = &b;
    for (int i = 0; i < 10; i++) {
        enqueue_value(array2, length, read, write, i);
    }
    for (int i = 0; i < 10; i++) {
        if (array2[i] != array[i])
            return 0;
    }
    if (*read != 1 || *write != 0)
        return 0;
    return 1;
}

int test_two() {
    int length = 5;
    int array[] = {10, 11, 12, 13, 14};
    int array2[length];
    int a = 0, b = 0;
    int *read = &a, *write = &b;
    for (int i = 0; i < 15; i++) {
        enqueue_value(array2, length, read, write, i);
    }
    for (int i = 0; i < 5; i++) {
        if (array2[i] != array[i])
            return 0;
    }
    if (*read != 1 || *write != 0)
        return 0;
    return 1;
}

int test_three() {
    int length = 5;
    int array[] = {0, 0, 2, 0, 0};
    int array2[length];
    int a = 0, b = 2;
    int *read = &a, *write = &b;
    for (int i = 0; i < 5; i++) {
        array2[i] = 0;
    }
    enqueue_value(array2, length, read, write, 2);
    for (int i = 0; i < 5; i++) {
        if (array2[i] != array[i])
            return 0;
    }
    if (*read != 0 || *write != 3)
        return 0;
    return 1;
}

int test_four() {
    int length = 5;
    int array[] = {5, 6, 2, 3, 4};
    int array2[length];
    int a = 0, b = 0;
    int *read = &a, *write = &b;
    for (int i = 0; i < 7; i++) {
        enqueue_value(array2, length, read, write, i);
    }
    for (int i = 0; i < 5; i++) {
        if (array2[i] != array[i])
            return 0;
    }
    if (*read != 3 || *write != 2)
        return 0;
    return 1;
}

int test_five() {
    int length = 5;
    int array[] = {10, 12, 4, 6, 8};
    int array2[length];
    int a = 0, b = 0;
    int *read = &a, *write = &b;
    for (int i = 0; i < 7; i++) {
        enqueue_value(array2, length, read, write, i * 2);
    }
    for (int i = 0; i < 5; i++) {
        if (array2[i] != array[i])
            return 0;
    }
    if (*read != 3 || *write != 2)
        return 0;
    return 1;
}

int main(void) {
    if (test_one())
        printf("test_one passed\n");
    else
        printf("test_one failed\n");
    if (test_two())
        printf("test_two passed\n");
    else
        printf("test_two failed\n");
    if (test_three())
        printf("test_three passed\n");
    else
        printf("test_three failed\n");
    if (test_four())
        printf("test_four passed\n");
    else
        printf("test_four failed\n");
    if (test_five())
        printf("test_five passed\n");
    else
        printf("test_five failed\n");
    return 0;
}
