#include <iostream>
#include "single.h"
using namespace std;

int main()
{
	TheOnlyInstance *pTheOnlyInstance = TheOnlyInstance::GetTheOnlyInstance();

	pTheOnlyInstance->func();

	TheOnlyInstance *foo = TheOnlyInstance::GetTheOnlyInstance();

	foo->func();

	cout << "Done.\n";

	return 0;
}
