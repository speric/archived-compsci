// Eric Farkas
// CUS 1114
// Prof. Burke
// Chapter 12, # 9

#include <iostream.h>

void main()
{
	char letter;

cout << "Please enter your letter (in lowercase):";
cin >> letter;

switch (letter)
{
case 'a':case 'e':case 'i':case 'o':case 'u': //vowels
	cout << "The letter "<<letter<<" is a vowel.\n";
	break;
case 'y': //y
	cout << "The letter "<<letter<<" is sometiems a vowel.\n";
	break;
default: //non-vowels
	cout << "The letter "<<letter<<" is a not vowel.\n";
} //end switch statement
}