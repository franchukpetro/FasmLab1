#include <stdio.h>
#include "example.h"


float progression_sum(float a1, float d, float n);

int main(){
    float first = 2;
    float step = 2;
    float number = 4;
    float result;
    result = progression_sum(first, step, number);
    printf("%f\n", result);
}
