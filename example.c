//
// Created by pedro on 23/11/18.
//

#include "example.h"

float progression_sum(float a1, float d, float n);

int main(){
    float first = 2;
    float step = 2;
    float number = 4;
    double result;
    result = (double) progression_sum(first, step, number);
    printf("%d", result);
}