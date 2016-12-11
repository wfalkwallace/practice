#include <stdio.h>

void foo(void (*func)())
{
	(*func)();
}

void bar()
{
		printf("in bar\n");
}

int main()
{
	foo(&bar);
	return 0;
}