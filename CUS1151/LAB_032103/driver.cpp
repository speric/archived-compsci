// 57 - Write a recursive function for searching a one-dimensional 
// array for a specified value.

#include <fstream.h>

void search(int *, int, int); //returns 1 if the number is in array

void main(){
	int test[] = {70, 90, 80};
	search(test,3,80);
}

void search(int *theArray, int length, int x){
	if (length == -1){
		cout<<"Number "<<x<<" not found in array"<<endl;
		return;
	}
	if (*theArray == x){
		cout<<x<<" found at position "<<length<<endl;
		return;
	}
	search(theArray+1, length-1, x);
}
		

