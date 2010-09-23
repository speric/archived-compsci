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
	void enterRev(int);
	void printList();
	void printLastElement();
	void printRev();
	int get(int);
	int count();
	ptrType prior(ptrType);
	ptrType last();
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

void linkedList::enterRev(int x){
	if (l == NULL){
		enter(x);
		return;
	}
	ptrType p = new node;
	p->info = x;
	p->next = NULL;
	ptrType t = last();
	t->next = p;
}


ptrType linkedList::last(){
	ptrType p = l;
	while (p->next != NULL)
		p=p->next;
	return p;
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
	ptrType p = l;
	int i = 0;
	while (p != NULL){
		p=p->next;
		i++;
	}
	return i;
}

int linkedList::get(int x){
	ptrType p = l;
	for (int i = 1; i < x; i++)
		p=p->next;
	return p->info;
}
