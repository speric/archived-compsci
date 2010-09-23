// num_7.cpp: From "The Bank", #7
// Eric Farkas, CUS 1144 MWF 7:00AM
// 1.23.02
// b) Repeat part (a) with a while loop using a test for a sentinel value 
// (i.e., special value indicating end of data).

// Question 'B'
#include <fstream.h>

void main()
{
	int x = 0, i = 0;
	while (x != -9999)
	{
	cout<<"Enter number (-9999 to stop): \n";
	cin>>x;
	if ((x >= 5) && (x <= 10))
		cout<<"The number "<<x<<" is greater than or equal to 5 and less than or equal to 10.\n";
			
	}	
}
