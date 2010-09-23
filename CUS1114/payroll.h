//payroll.h

#include <iostream.h>

void get_payroll_data(float &rate, float &hours);
int validate_data(float rate, float hours);
float pay(float rate, float hours);

void get_payroll_data(float &rate, float &hours)
{
	cout << "Enter an hourly rate:";
	cin >> rate;
	cout << "Enter hours worked:";
	cin >> hours;
}

int validate_data(float rate, float hours)
{
int valid;
	
if (rate > 15)
	valid = 0;
if (rate < 8)
	valid = 0;
if (hours > 80)
	valid = 0;
if (hours < 0)
	valid = 0;
else
	valid = 1;

return valid;
}

float pay(float rate, float hours)
{
if (hours <= 40)
	pay = (rate * hours);
else 
	pay = (rate * hours * 1.5)
}




	

