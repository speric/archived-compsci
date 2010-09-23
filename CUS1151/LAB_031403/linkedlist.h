// eric farkas - cus 1151
// mwf 10:10-11:05

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
	int count();
	int nthElement(int);
	void printList();
	void printLastElement();
	void printRev();
	ptrType prior(ptrType);
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

ptrType linkedList::prior(ptrType x){
	ptrType ptr = l;
	while (ptr->next != x)
		ptr = ptr->next;
	return ptr;
}

void linkedList::printRev(){
	ptrType p = l;
	//p at last node
	while (p->next != NULL){
		p = p->next;
	}
	ptrType ptr = p;
	while (ptr != l){
		cout<<ptr->info<<endl;
		ptr = prior(ptr);
	}
	cout<<ptr->info<<endl;
}

int linkedList::count(){
	int n = 0;
	ptrType p = l;
	while (p != NULL){
		n++;
		p = p->next;
	}
	return n;
}

int linkedList::nthElement(int x){
	ptrType p = l;
	for (int i = 1; i < x; i++)
		p = p->next;
	return p->info;
}