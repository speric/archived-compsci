// eric farkas - cus 1151
// mwf 10:10-11:05
// #34 in bank.doc

struct node{
	int info;
	node* next;
};
typedef node* ptrType;

class linkedList{
private:
	ptrType l;
public:
	linkedList();
	void enter(int);
	void printList();
	void printLastElement();
};


linkedList::linkedList(){
	l = NULL;
}

void linkedList::enter(int x){
	ptrType p = new node;
	p->info = x;
	p->next = l;
	l = p;
}

void linkedList::printList(){
	ptrType p = l;
	while (p != NULL){
		cout<<p->info<<endl;
		p = p->next;
	}
}

void linkedList::printLastElement(){
	ptrType p = l;
	while (p->next != NULL){
		p = p->next;
	}
	cout<<"Last Element: "<<p->info<<endl;
}