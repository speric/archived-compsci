// myVector.cpp - vector class implementaion

//default constructor
vector::vector(){
	n = 0;
}

//enter function
void vector::enter(int x){
	vals[n] = x;
	n++;
}

//return count of elements in the vector
int vector:: count(){
	return n;
}

//get any "nth" value in the vector
int vector::nthElement(int x){
	return vals[x-1];
}

