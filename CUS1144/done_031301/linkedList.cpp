// #123 - Write a main function that does the following:  
// a) reads an indeterminate number of values from the keyboard and stores them in a linked-list
// b) prints all the values
// c) prints the average of the values
// d) prints the negative values
// Eric Farkas
// CUS 1144 MWF 7:00-7:55
// March 14, 2002

#include <fstream.h>

// node definition
struct node{
	int info;
	node* next;
};
typedef node* ptrType;

void main(){
	int count, num, sum = 0;
		
	ptrType l = NULL;
	cout<<"How many values to enter? ";
	cin>>count;
	
	// get values for list
	for (int i = 0; i < count; i++){
		cout<<"Enter value: ";
		cin>>num;
		sum += num;		// running sum
		ptrType p = new node;
		p->info = num;
		p->next = l;
		l = p;
	}
	
	cout<<endl;

	// print the values
	cout<<"Values In The List:\n";
	ptrType ptr = l;
	while (ptr != NULL){
		cout<<ptr->info<<endl;
		ptr = ptr->next;
	}

	cout<<endl;
	// print the average
	cout<<"The Average is: "<<(sum / count)<<endl;
	cout<<endl;

	// print the negative values
	cout<<"Negative Values In The List:\n";
	ptrType ptrTwo = l;
	int j = 0;
	while (ptrTwo != NULL){
		if (ptrTwo->info < 0){
			cout<<ptrTwo->info<<endl;
			j++;}
		ptrTwo = ptrTwo->next;
		}
	if (j == 0)
			cout<<"NONE\n";
}





