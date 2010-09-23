//driver

#include <fstream.h>
#include "linkedList.h"

void main(){
	cout<<"Test Case 1"<<endl;
	linkedList l;
	l.enter(70);
	l.enter(80);
	l.enter(90);
	l.printList();
	l.printLastElement();
	cout<<endl;

	cout<<"Test Case 2"<<endl;
	linkedList t;
	t.enter(100);
	t.enter(10);
	t.enter(50);
	t.printList();
	t.printLastElement();
	cout<<endl;

	cout<<"Test Case 3"<<endl;
	linkedList r;
	r.enter(90);
	r.enter(80);
	r.enter(70);
	r.enter(65);
	r.printList();
	r.printLastElement();
}
