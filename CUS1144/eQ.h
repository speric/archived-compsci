//eQ.h - eQueue class implementation
#include "linkedList.h"

class eQueue: private linkedList{  //inherits from linkedList class
public:
	eQueue();		//default constructor
	void enQ(int);	//enter value into queue
	int deQ();		//get value from queue
	int fullQ();	//return 0; queue never full 
	int emptyQ();	//return 1 if empty, 0 if else
	void printQ();	//print all the values in the queue
};
#include "eQ.cpp"
