// Eric Farkas
// Prof. Burke, CUS 1114
// Payroll Project

#include <iostream.h>
#include "sju.h"
#include "payroll.h"

void main()
{
float r;			//hourly rate
float h;			//hours worked
float p;			//amount to be paid
int valid;

fixed_out(cout,2);

get_payroll_data(r,h);
valid = validate_data(r,h);

if (valid)
{
	p = pay(r,h);
	cout << "Total pay:" << p <<endl;
}
else
	cout << "Invalid data entered.\n";
}

