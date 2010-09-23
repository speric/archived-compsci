// lab 012403 - p. 351 #6
// eric farkas
// cus 1151 - mwf 10:10-11:05
// spring 2003

#include <fstream.h>

struct student{
	char studentName;
	char letterGrade;
	int studentGrades[5];
	int studentAvg;
};
typedef student studentArray[10];

void calculateAverage(student *a, int &n);
void calculateGrade(student *a, int n);

void main(){
	int count = 0;
	studentArray labStudents;
	calculateAverage(labStudents, count);
	calculateGrade(labStudents, count);

	cout<<"Student\tTest1\tTest2\tTest3\tTest4\tTest5\tAvg.\tGrade"<<endl;
		for (int i=0; i<count; i++){
			cout<<labStudents[i].studentName<<"\t";	
			for(int j=0; j<=4; j++)
				cout<<labStudents[i].studentGrades[j]<<"\t";
			cout<<labStudents[i].studentAvg<<"\t"<<labStudents[i].letterGrade<<endl;
		}
}

void calculateAverage(student *a, int &n){
	ifstream inFile("grades.txt", ios::in);
	int sum = 0;	
		while (inFile>>a[n].studentName){
			sum = 0;
			for(int i=0; i <= 4;i++){
				inFile>>a[n].studentGrades[i];
				sum+= a[n].studentGrades[i];
			}
			a[n].studentAvg = sum/5;
			n++;
		}
}

void calculateGrade(student* a, int n){
	int finalAverage;
	for (int i=0; i<n; i++){
		finalAverage = a[i].studentAvg;	
		if (finalAverage <=100 && finalAverage >= 90)
			a[i].letterGrade = 'A';
		if (finalAverage <=89 && finalAverage >= 80)
			a[i].letterGrade = 'B';
		if (finalAverage <=79 && finalAverage >= 70)
			a[i].letterGrade = 'C';
		if (finalAverage <=69 && finalAverage >= 60)
			a[i].letterGrade = 'D';
		if (finalAverage <= 59)
			a[i].letterGrade = 'F';
	}
}