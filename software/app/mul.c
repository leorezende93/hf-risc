#include <hf-risc.h>

int main(){
	int a = 0x55555555;
	int b = 0xAAAAAAAA;
	int c = 0xFFFFFFFF;
	int mul1,mul2,mul3,mul4 = 0;

	mul1 = a * c;
	mul2 = b * c;
	mul3 = a * b;
	mul4 = mul1 * mul2;
	mul1 = mul2 * mul3;
	mul2 = mul3 * mul4;
	mul1 = c * c;
	mul1 = mul1 * 0;
	mul2 = mul2 * 0;
	mul3 = mul3 * 0;
	mul4 = mul4 * 0;

        return 0;
}





