#include <hf-risc.h>

int mul(int n){
        int a = 1;
        int mul = 0;
        int i;

        for (i = 1; i <= n; i++) {
                mul = a * i;
                a = i;
                printf("%d ", mul);
        }

        return 0;
}

int main(){
        mul(50);
        putchar('\n');
        return 0;
}

