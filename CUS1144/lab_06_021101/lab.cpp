// Write a function (not main) that can be passed a pointer to
// a two dimensional array having 5 columns.  The number of 
// rows and the number of columns actually used in the array 
// should be parameters of the function.   Your function should 
// print out column sums.
// Feb. 11, 2002

#include <fstream.h>

void colsums(int a[][5], int rowcount, int colcount);

void main()
{
	int x[][5] = {{75,95,65,85}, {40,10,20,15}};
	colsums(x,2,4);
}

void colsums(int a[][5], int rowcount, int colcount)
{
	int sum = 0, i = 0, j = 0;
	
	cout<<"Column\tSum"<<endl;
	for (i = 0; i < colcount; i++)		// column index
	{
		for (j = 0; j < rowcount; j++)		// row index
		{
			sum += a[j][i];
		}
		cout<<(i + 1)<<"\t"<<sum<<endl;
		sum = 0;
	}
		
	
}
		

