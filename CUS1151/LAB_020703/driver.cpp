#include <fstream.h>
#include "matrix.h"

void main(){
	matrix test1, test2, test3;
	int r,c,v,i,j;
	cout<<"Enter shape for matrices:\n";
	cout<<"Rows: ";
	cin>>r;
	cout<<"Columns: ";
	cin>>c;

	test1.setShape(r,c);
	test2.setShape(r,c);

	cout<<"Enter values for first matrix in row-major order:"<<endl;
	for(i=0; i<r; i++)
		for(j=0; j<c; j++){
			cout<<"Enter Value ["<<i<<"]["<<j<<"]: ";
			cin>>v;
			test1.enter(i,j,v);
		}

	cout<<"Enter values for second matrix in row-major order:"<<endl;
	for(i=0; i<r; i++)
		for(j=0; j<c; j++){
			cout<<"Enter Value ["<<i<<"]["<<j<<"]: ";
			cin>>v;
			test2.enter(i,j,v);
		}
	cout<<"New Merged Matrix:\n";
	test3 = test3.merge(test1, test2);
	test3.printVals();
	test3.printRowSums();
	test3.printColSums();
}