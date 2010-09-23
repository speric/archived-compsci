// Eric Farkas
// CUS 1114
// Prof. Burke
// Chapter 12, #20 

#include <iostream.h>

void main()
{
	float balance = 200.00;
	float deposit,withdraw,temp_bal;
	char menu_choice;

cout << "ATM Menu\n";
cout << "================\n";
cout << "";
cout << "B: See Balance\n";
cout << "D: Deposit\n";
cout << "W: Withdraw\n";
cout << "X: Exit\n";
cin >> menu_choice;

while (menu_choice != 'x')
{
	switch (menu_choice)
	{
	case 'B':
		cout << "Your current balance is: $"<<balance<<endl;
		cout << "Choose your option:";
		cin >> menu_choice;
		break;
	case 'D':
		cout << "Enter amount to deposit:\n";
		cin >> deposit;
		balance += deposit;
		cout << "Choose your option:";
		cin >> menu_choice;
		break;
	case 'W':
		cout << "Enter amount to withdraw:\n";
		cin >> withdraw;
		temp_bal = balance - withdraw;
		while (temp_bal < 0)
			{
			cout << "You only have $"<<balance<<".  Please enter another amount:\n";
			cin >>withdraw;
			temp_bal = balance - withdraw;
			}
			balance -= withdraw;
			cout << "Choose your option:";
			cin >>menu_choice;
		break;
	case 'X':
		cout << "Thanks for using the ATM\n";
		break;
	default:
		cout << "Invalid selection, please choose again:\n";
		cin >> menu_choice;
	}
}
}