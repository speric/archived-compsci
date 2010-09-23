//eQ.cpp - eQueue class specification

//default constructor
eQueue::eQueue(){
}

//enter value into queue
void eQueue::enQ(int x){
	this->enterRear(x);
}

//get value from queue
int eQueue::deQ(){
	int x = this->nthElement(1);
	this->delFront();
	return x;
}

//return 0; queue never full 
int eQueue::fullQ(){
	return 0;
}

//return 1 if empty, 0 if else
int eQueue::emptyQ(){
	return (this->getCount() == 0);
}

//print all the values in the queue
void eQueue::printQ(){
	while (this->getCount() != 0){
		cout<<this->nthElement(1)<<endl;
		this->delFront();
	}
}