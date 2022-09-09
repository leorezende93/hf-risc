#include <hf-risc.h>

int sum(int n){
        int a = 1;
        int sum = 0;
        int i;

        for (i = 0; i < n; i++) {
                sum = a + i;
                a = sum;
                printf("%d ", a);
        }

        return 0;
}

int main(){
        sum(50);
        putchar('\n');
        return 0;
}

