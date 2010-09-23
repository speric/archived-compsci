//driver

#include <fstream.h>
#include "linkedList.h"

void main(){
	cout<<"Test Case 1"<<endl;
	linkedList r;
	r.enter(70);
	r.enter(90);
	r.enter(80);
	r.printList();
	r.printLastElement();
	r.printRev();

	cout<<"Test Case 2"<<endl;
	linkedList p;
	p.enter(100);
	p.enter(10);
	p.enter(50);
	p.printList();
	p.printLastElement();
	p.printRev();

	cout<<"Test Case 3"<<endl;
	linkedList t;
	t.enter(90);
	t.enter(80);
	t.enter(70);
	t.enter(65);
	t.printList();
	t.printLastElement();
	t.printRev();
}
