//linkedList.h - linkedList class implemenation
struct node{
	int info;
	node* next;
};
typedef node* ptrType;

class linkedList{
private:
	ptrType l,t;
public:
	linkedList();
	void enterFront(int); //enter a value in the front
	void enterRear(int);  //enter a value in the rear
	void delFront();	  //delete front node
	void delRear();       //delete last node
	int getCount();		  //returns count of node elements
	int nthElement(int);  //get the nthelement
	void printList();
};
#include "linkedList.cpp"
