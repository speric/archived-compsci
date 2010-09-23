#include <fstream.h>

matrix::matrix(){
	rowCount = colCount = 0;
}

int matrix::rows(){
	return rowCount;
}

int matrix::cols(){
	return colCount;
}

int matrix::getVal(int x, int y){
	return a[x][y];
}

void matrix::setShape(int r,int c){
	rowCount = r;
	colCount = c;
}

void matrix::enter(int r,int c,int x){
	if (r > rowCount || c > colCount){
		cout<<"Out of matrix range."<<endl;
		return;
	}
	a[r][c] = x;
}

void matrix::printRowSums(){
	int sum;
	for(int i = 0; i < rowCount; i++){
		sum = 0;
		for(int j = 0; j < colCount; j++){
			sum += a[i][j];
		}
		cout<<"Row "<<i<<" = "<<sum<<endl;
	}
}

void matrix::printColSums(){
	int sum;
	for(int i = 0; i < colCount; i++){
		sum = 0;
		for(int j = 0; j < rowCount; j++){
			sum += a[i][j];
		}
		cout<<"Column "<<i<<" = "<<sum<<endl;
	}
}

matrix matrix::merge(matrix x, matrix y){
	matrix mergedMatrix;
	int row = x.rows();
	int col = x.cols();
	
	mergedMatrix.setShape(row,col);

	for (int i = 0; i< row; i++){
		for(int j = 0; j < col; j++){
			int num = x.getVal(i,j) + y.getVal(i,j);
			mergedMatrix.enter(i,j,num);
		}
	}
	return mergedMatrix;
}

void matrix::printVals(){
	int i,j; 
	for (i = 0; i < rowCount; i++){
		for(j = 0;  j < colCount; j++)
		   cout<<a[i][j] << " ";
		   cout<<endl;
	}
}
