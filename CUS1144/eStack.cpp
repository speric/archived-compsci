//eStack.cpp - stack class specification
eStack::eStack(){
}

//enter an element
void eStack::push(int x){
	list.enterFront(x);
}

//return element
int eStack::pop(){
	int x = list.nthElement(1);
	list.delFront();
	return x;
}

//return count of list elements
int eStack::getCount(){
	return list.getCount();
}

//return 1 if stack is full
int eStack::fullStack(){
	return 0;
}
	
//return 1 if stack is empty
int eStack::emptystack(){
	return (list.getCount() == 0);
}
