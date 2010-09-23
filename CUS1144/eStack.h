//eStack.h - stack class implemenation using linked list
#include "linkedList.h"

class eStack{
private:
	linkedList list;
public:
	eStack();
	void push(int);	//enter an element
	int pop();		//return element
	int getCount();	//return count of list elements
	int fullStack();//return 1 if stack is full
	int emptystack();//return 1 if stack is empty
};

#include "eStack.cpp"

