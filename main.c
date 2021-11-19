#include <stdio.h>
#include <malloc.h>
#include "string.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct Param {
    int *arr, s, e;
} Param;

void *mergeSort(void *p) {
    Param *param = (Param *) p;
    int *arr = param->arr;
    int s = param->s, e = param->e;

    if (s >= e)
        pthread_exit(NULL);

    int fHalfEnd = (e - s) / 2  + s;

    Param newParam1 = {arr, s, fHalfEnd};
    Param newParam2 = {arr, fHalfEnd + 1, e};
    pthread_t th1ID, th2ID;
    pthread_create(&th1ID, NULL, mergeSort, &newParam1);
    pthread_create(&th2ID, NULL, mergeSort, &newParam2);

    if (pthread_join(th1ID, NULL))
        fprintf(stderr, "Some thing went wrong.");
    if (pthread_join(th2ID, NULL))
        fprintf(stderr, "Some thing went wrong.");


    int temp[e - s + 1], count = 0;
    int *fP = arr + s, *sP = arr + fHalfEnd + 1;
    while(fP <= arr + fHalfEnd && sP <= arr + e)
        temp[count++] = *fP < *sP ? *fP++ : *sP++;
    while (fP <= arr + fHalfEnd)
        temp[count++] = *fP++;
    while (sP <= arr + e)
        temp[count++] = *sP++;

    for (int i = 0; i < count; i++)
        arr[s + i] = temp[i];

    pthread_exit(NULL);
}

int main() {
    char path[] = "input.txt";
    int size, *arr;
    FILE *f = fopen(path, "r");
    if (!f) {
        fprintf(stderr, "Can't open the input file.");
        exit(-1);
    }

    FILE *ansFile = fopen("ans.txt", "w");
    char sizeInput[100];
    fgets(sizeInput, 100, f);
    sizeInput[strlen(sizeInput) - 1] = '\0';
    size = atoi(sizeInput);

    arr = (int *) malloc(sizeof(int) * size);
    int temp;
    for (int i = 0; i < size; i++) {
        fscanf(f, "%d", &temp);
        arr[i] = temp;
    }

    if (size > 1) {
        Param param = {arr, 0, size};
        pthread_t thID;
        pthread_create(&thID, NULL, mergeSort, &param);

        if (pthread_join(thID, NULL))
            fprintf(stderr, "Some thing went wrong.");

    }

    if (!ansFile) {
        fprintf(stderr, "Can't create the answer file.");
        exit(-1);
    }

    printf("H");
    fprintf(ansFile, "Sorted array: ");
    for (int i = 0; i < size; i++)
        fprintf(ansFile, "%d%c", arr[i], i == size - 1 ? EOF : ' ');

    free(arr);
    fclose(f);
    fclose(ansFile);
    return 0;
}
