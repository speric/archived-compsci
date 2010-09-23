//driver

#include <fstream.h>
#include "linkedList.h"

void main(){
	cout<<"Test Case 1"<<endl;
	linkedList l;
	l.enter(-70);
	l.enter(80);
	l.enter(-90);
	
	cout<<l.negVals()<<endl; //expect 2
}
