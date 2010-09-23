// lab_013103.cpp - p.466 #2
// eric farkas cus 1151 mwf 10:10
// spring 2003

#include <fstream.h>

int smallestIndex(int *, int);

void main(){
	int testArray[] = {90,70,80,65,100};
	cout<<"The index of the smallest value is: ";
	cout<<smallestIndex(testArray,5)<<endl;
}

int smallestIndex(int *a, int count){
	int theSmallest = a[0];
	int theIndex = 0;
	for (int i=0; i<count; i++){
		if (a[i] < theSmallest)
			theIndex = i;
		}
	return theIndex;
}
