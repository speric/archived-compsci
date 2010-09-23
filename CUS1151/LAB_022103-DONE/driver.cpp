//driver

#include <fstream.h>
#include "linkedList.h"

void main(){
	cout<<"Test Case 1"<<endl;
	linkedList r;
	r.enter(70);
	r.enter(90);
	r.enter(80);
	r.enter(65);
	r.printRev();
	cout<<endl;
	cout<<"Test Case 2"<<endl;
	linkedList x;
	x.enter(100);
	x.enter(10);
	x.enter(50);
	x.printRev();
	cout<<endl;
	cout<<"Test Case 3"<<endl;
	linkedList y;
	y.enter(90);
	y.enter(80);
	y.enter(70);
	y.enter(65);
	y.printRev();
}
