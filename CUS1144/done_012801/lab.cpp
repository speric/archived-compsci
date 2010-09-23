/*
Prob. 110:Write a subfunction that finds the minimum and maximum values in a one-dimensional 
array of integers, and makes those two values available to a calling function.  
Assume that the calling function will pass a pointer to the array and a count of 
the number of values in the array.
*/

#include <fstream.h>
void maxmin(int *a, int count, int &themax, int &themin);

void main()
{
	int max,min;
	int x[] = {4,100,8,1,99};
	maxmin(x,5,max,min);
	cout<<"First Test:\n";
	cout<<"max: "<<max<<endl; //expect 500
	cout<<"min: "<<min<<endl; //expect 4
	cout<<"\n";
	
	int y[] = {98,70,60,50};
	max = 0; min = 0;
	maxmin(y,4,max,min);
	cout<<"Second Test:\n";
	cout<<"max: "<<max<<endl; //expect 98
	cout<<"min: "<<min<<endl; //expect 50
	cout<<"\n";
	
	int z[] = {80,90,70};
	max = 0; min = 0;
	maxmin(z,3,max,min);
	cout<<"Third Test:\n";
	cout<<"max: "<<max<<endl; //expect 90
	cout<<"min: "<<min<<endl; //expect 70
}

void maxmin(int *a, int count, int &themax, int &themin)
{
	for (int i = 0; i < count; i++)
	{
		if (i == 0)
		{themin = a[0]; themax = a[0];}
		if (a[i] > themax)
			themax = a[i];
		if (a[i] < themin)
			themin = a[i];
	}
}
