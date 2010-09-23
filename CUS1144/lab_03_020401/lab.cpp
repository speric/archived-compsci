#include<fstream.h>

void twoLargest(int *, int, int &, int &);

void main(){
	cout<<"Test Cases"<<endl;
	
	cout<<"Test 1"<<endl;
	int numbers[] = {4,100,8,1,99};
	int largest1, largest2;
	twoLargest(numbers,5,largest1,largest2);
	cout<<"Largest1: "<<largest1<<endl;
	cout<<"Largest2: "<<largest2<<endl;
	cout<<endl;
	
	cout<<"Test 2"<<endl;
	int numbers2[] = {98,70,60,50};
	twoLargest(numbers2,4,largest1,largest2);
	cout<<"Largest1: "<<largest1<<endl;
	cout<<"Largest2: "<<largest2<<endl;
	cout<<endl;
	
	cout<<"Test 3"<<endl;
	int numbers3[] = {80,90,70};
	twoLargest(numbers3,3,largest1,largest2);
	cout<<"Largest1: "<<largest1<<endl;
	cout<<"Largest2: "<<largest2<<endl;
}

void twoLargest(int *a, int count, int &l1, int &l2){
	l1 = a[0]; 
	l2 = a[0];
	for (int i = 1; i < count; i++){
		if (a[i] > l1)
			l1 = a[i];
		if (a[i] > l2 && a[i] < l1)
			l2 = a[i];
	}
}




