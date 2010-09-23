/*17. We wish to have the definition of a class that has a two-dimensional array of integers as data  
(10 rows and 10 columns) and operations for the following: writing out the row sums; writing the 
column sums; adding two arrays of the same class, creating a new array (without altering the original 
two arrays).
  a) Show the specification.   b) Show the implementation    c) Show a driver suitable for testing your class.*/

class matrix{
private:
	int a[10][10];
	int rowCount, colCount;
public:
	matrix();
	void setShape(int,int); //sets size of matrix
	void enter(int,int,int); //enter data, row, col, value
	int rows();
	int cols();
	int getVal(int,int);
	void printRowSums();
	void printColSums();
	void printVals();
	matrix merge(matrix,matrix); //adds two matrices
};

#include "matrix.cpp"
