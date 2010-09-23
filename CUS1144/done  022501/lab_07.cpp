// Assume that a text file contains an indeterminate number of lines, 
// each line has a student's last name followed by four integer grades. 
// Write a subfunction that reads the file and stores the data in an array 
// of structures (show the  struct definition). The subfunction should return 
// a count of the number of lines in the file.  Show a test plan and driver. 
// The driver should print the contents of the file in easy-to-read format.

#include <fstream.h>

struct student{
	char lastName[10];
	int gradeArray[4];
};
typedef student studentArray[100];

int readAndStore(studentArray);

void main(){
	studentArray myClass;
	int count = readAndStore(myClass);
	cout<<"Name\t\tGrade 1\tGrade 2\tGrade 3\tGrade 4\n";
	for (int i = 0; i < count; i++){
		cout<<myClass[i].lastName<<"\t";
		for (int j = 0; j <= 3; j++)
			cout<<myClass[i].gradeArray[j]<<"\t";
		cout<<endl;
	}
	cout<<"Entries: "<<count<<endl;
}

int readAndStore(studentArray testCase){
	char current,next;	//hold current and next char for last name
	int count = 0,i = 0,k = 0;
	
	ifstream inFile("class.txt", ios::in);
	next = inFile.peek(); //look at next
	
	while (!inFile.eof()){
	while (next >= 65){		//while the next char isNaN
		inFile>>current;	
		testCase[count].lastName[i] = current;
		i++;
		next = inFile.peek();
		}
	testCase[count].lastName[i] = '\0'; //end string
	
	//read grades into array
	for (int j = 0; j <= 3; j++){
		inFile>>k;
		testCase[count].gradeArray[j] = k;
		}
		//reset values
		next = 65;
		i = 0;
		count++;
	}
	inFile.close();
	return count;
}
