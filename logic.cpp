// logic.cpp
// Program to Test Logical Operators
// Eric Farkas 9.22.01

#include <iostream.h>

void main(){
    
    cout<<"The Logical Operators:\n";
    cout<<"\n";
    cout<<"AND operator: 0 AND 0 = "<<(0 && 0)<<endl;
    cout<<"AND operator: 1 AND 0 = "<<(1 && 0)<<endl;
    cout<<"AND operator: 1 AND 1 = "<<(1 && 1)<<endl;
    cout<<"\n";
    cout<<"OR operator : 0 OR 0  = "<<(0 || 0)<<endl;
    cout<<"OR operator : 1 OR 0  = "<<(1 || 0)<<endl;
    cout<<"OR operator : 1 OR 1  = "<<(1 || 1)<<endl;
    cout<<"\n";
    cout<<"XOR operator: 0 XOR 0 = "<<(0 ^ 0)<<endl;
    cout<<"XOR operator: 1 XOR 0 = "<<(1 ^ 0)<<endl;
    cout<<"XOR operator: 1 XOR 1 = "<<(1 ^ 1)<<endl;
}
