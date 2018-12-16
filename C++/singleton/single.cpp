#include <iostream>
#include "single.h"
using namespace std;

TheOnlyInstance::TheOnlyInstance()
{
	cout << "+++Constructor+++\n";
}

TheOnlyInstance::~TheOnlyInstance()
{
	cout << "+++Destructor+++\n";
}

TheOnlyInstance* TheOnlyInstance::GetTheOnlyInstance()
{
	static TheOnlyInstance objTheOnlyInstance;
	return &objTheOnlyInstance;
}

void TheOnlyInstance::func()
{
	cout << "+++func[" << this << "]+++\n";
}
