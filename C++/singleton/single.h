#ifndef SINGLE_H_
#define SINGLE_H_
class TheOnlyInstance
{
protected:
	TheOnlyInstance();
	~TheOnlyInstance();
public:
	static TheOnlyInstance* GetTheOnlyInstance();
	void func();
};
#endif
