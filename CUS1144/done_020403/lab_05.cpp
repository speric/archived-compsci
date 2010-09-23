// lab_05.cpp
// Write a subfunction that returns the largest value in a two-dimensional array.
// Assume that the calling function will pass a pointer to an existing array and 
// counts of how many rows and columns are used in the array.  Assume that the 
// array was declared to have 6 columns

#include <fstream.h>

int largestval(int a[][6], int rows, int cols);

void main()
{
	int x[][6] = {{70,90,80,100,50,40}, {1,2,3,5,6,10}};
	cout<<"The largest value is "<<largestval(x,2,6)<<endl; // expect 100
}

int largestval(int a[][6], int rows, int cols)
{
	int i = 0,j = 0;
	int max = a[0][0];
	for (i; i < rows; i++)
		for (j; j < cols; j++)
			if(a[i][j] > max)
				max = a[i][j];
	return max;
}


