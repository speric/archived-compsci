// myVector.h - vector class specification

class vector{
private:	
	int vals[100];
	int n;			//count of values in the vector
public:
	vector();		//default constructor
	void enter(int);	//enter data into vector
	int count();	//returns a count of elements
	int nthElement(int);	//returns the nth element
};
#include "myVector.cpp"
