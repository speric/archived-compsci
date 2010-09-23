// num_7.cpp: From "The Bank", #7
// Eric Farkas, CUS 1144 MWF 7:00AM
// 1.23.02
// a)Write a main function to read an indeterminate number of integers from the keyboard 
// and print out those in the range from 5 to 10 (inclusive).  Use a for loop (no while loops).

// Question 'A'
#include <fstream.h>

void main()
{
	int x, i, n;
	for (int j = 1; j <= 3; j++)
	{
	cout<<endl;
	cout<<"Test "<<j<<endl;
	cout<<"Enter the numbers of values:\n";
	cin>>x;
	for (i = 0; i < x; i++)
	{
	cout<<"Enter number: \n";
	cin>>n;
	if ((n >= 5) && (n <= 10))
		cout<<"The number "<<n<<" is greater than or equal to 5 and less than or equal to 10.\n";
	}
	}
}




