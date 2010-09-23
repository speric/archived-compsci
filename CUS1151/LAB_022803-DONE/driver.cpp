//driver

#include <fstream.h>
#include "vector.h"

void main(){
	cout<<"Test Case 1"<<endl;
	vector v;
	v.enter(70);
	v.enter(90);
	v.enter(80);
	cout<<"Number of elements: "<<v.count()<<endl;
	cout<<"1st element: "<<v.get(1)<<endl;
	cout<<endl;
	cout<<"Test Case 2"<<endl;
	vector x;
	x.enter(100);
	x.enter(50);
	x.enter(40);
	x.enter(90);
	cout<<"Number of elements: "<<v.count()<<endl;
	cout<<"2nd element: "<<x.get(2)<<endl;
	cout<<endl;
	cout<<"Test Case 2"<<endl;
	vector y;
	y.enter(90);
	y.enter(70);
	y.enter(80);
	cout<<"Number of elements: "<<y.count()<<endl;
	cout<<"3rd element: "<<y.get(3)<<endl;
	cout<<endl;
}
