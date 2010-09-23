#include<fstream.h>
#include "triangle.h"

void main(){
	Triangle a;
	a.setSides(3,4,5);
	cout<<"Perimeter of Triangle a = "<<a.perimeter()<<endl;
	Triangle b(9,10,12);
	cout<<"Perimeter of Triangle a = "<<b.perimeter()<<endl;
}

