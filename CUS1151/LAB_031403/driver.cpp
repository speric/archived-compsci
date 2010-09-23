#include <fstream.h>
#include "linkedList.h"

void greaterThanAvg(linkedList);

void main(){
	linkedList test;
	test.enter(70);
	test.enter(90);
	test.enter(80);
	test.enter(60);
	greaterThanAvg(test);
}

void greaterThanAvg(linkedList x){
	int count = x.count(),y;
	float sum = 0, avg = 0;

	for (int i = 1; i <= count; i++)
		sum += x.nthElement(i);

	avg = sum/count;
	cout<<avg<<endl;

	for (i = 1; i < x.count(); i++){
		y = x.nthElement(i);
		if (y > avg)
			cout<<y<<endl;
	}
}
		

