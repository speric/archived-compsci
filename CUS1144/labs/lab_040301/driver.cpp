/*
128)Write a client subfunction that prints the values in the vector
that are greater than average.  The calling function will pass an object 
of the class shown in Question 127, with values already strored.
*/

#include <iostream.h>
#include "myVector.h"

int greaterThanAvg(vector);

void main(){
	vector testVector1;
	testVector1.enter(70);
	testVector1.enter(90);
	testVector1.enter(80);
	cout<<"Test Case 1: "<<greaterThanAvg(testVector1)<<endl; //expect 1

	vector testVector2;
	testVector2.enter(100);
	testVector2.enter(50);
	testVector2.enter(45);
	testVector2.enter(90);
	cout<<"Test Case 2: "<<greaterThanAvg(testVector2)<<endl; //expect 1

	vector testVector3;
	testVector3.enter(75);
	testVector3.enter(65);
	testVector3.enter(10);
	testVector3.enter(0);
	cout<<"Test Case 3: "<<greaterThanAvg(testVector3)<<endl; //expect 1
}

int greaterThanAvg(vector x){
	int sum = 0, total = 0, n = x.count();
	float avg;
	
	//get sum
	for(int i = 1; i <= n; i++)
		sum += x.nthElement(i);

	//get avg
	avg = (sum / n);

	//get total>avg
	for(int j = 1; j <= n; j++){
		if (x.nthElement(j) > avg)
			total++;
	}
	return total;
}


		

