// lab_04.cpp
// Write a subfunction that prints first the positive values in an array 
// of indeterminate size, and then prints the negative values.  Assume 
// that the array values are stored by the calling function.

#include <fstream.h>

void printvals(int *a,int count);

void main()
{
	int x[] = {-1,3,6,-10,-6,8};
	printvals(x,6);
	cout<<endl;

	int y[] = {70,90,-80,100};
	printvals(y,4);
	cout<<endl;

	int q[] = {1,2,3,-4,10};
	printvals(q,5);
}

void printvals(int *a,int count)
{
	int i;
	cout<<"The positive values in the array are:\n";
	for(i=0; i<count; i++)
	{
		if(a[i] > 0)
			cout<<a[i]<<endl;
	}
	cout<<"The negative values in the array are:\n";
	for(i=0; i<count; i++)
	{
		if(a[i] < 0)
			cout<<a[i]<<endl;
	}
}
