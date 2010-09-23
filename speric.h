/********************************************************************
 * FILE: speric.h - customized header file							*
 * AUTHOR: Eric Farkas												*
 * PURPOSE: This file contains specifications for dynamics linked	*
 * lists, stacks and queues, as well as a bubble sort.  These were	*
 * all created during my freshman year in college and are now part	*
 * of one header file.												*
 * DATE: September 25, 2001											*
 * NOTES: The implementation file is "speric.cpp"					*
 ********************************************************************
 */

/*****LINKED LIST IMPLEMENTATION-BASE CLASS*****/
// NODE DEFINITION
struct node{
	int info;
	node* next;
};
typedef node* PtrTyp;						// list pointer data type

public class linkedlist{
private:
	PtrTyp l, t;							// list pointers, beginning and end
public:
	linkedlist();							// 'no arg' default constructor
	void enter(int);						// enter info into the list, LIFO
	void del();							 	// deletes largest value
	PtrTyp getlarge(PtrTyp,PtrTyp);			// returns largest node
	PtrTyp prior(PtrTyp);					// gets value of 'prior' node
	void printlist();						// prints all data in the list
};

#include "speric.cpp"
/*****END LIST IMPLEMENTATION*****/




