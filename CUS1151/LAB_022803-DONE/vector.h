//vector. h
// eric farkas
// mwf 10:10-11:05

#include "linkedList.h"

class vector{
private:
	linkedList theList;
public:
	vector();
	int count();
	void enter(int);
	int get(int);
};

vector::vector(){
}

void vector::enter(int x){
	theList.enterRev(x);
}

int vector::count(){
	return theList.count();
}

int vector::get(int i){
	return theList.get(i);
}

