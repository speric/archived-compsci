//linkedList.cpp - linkedList class specification
linkedList::linkedList(){
	l = NULL;
}

//enter a value in the front
void linkedList::enterFront(int x){ 
	ptrType p = new node;
	p->info = x;
	p->next = l;
	l = p;
}

//enter a value in the rear
void linkedList::enterRear(int x){
	if (l == NULL){
		enterFront(x);
		return;
	}
	ptrType ptr = l;
	while (ptr->next != NULL)
		ptr = ptr->next;

	ptrType p = new node;
	p->info = x;
	p->next = NULL;
	ptr->next = p;
}

//delete front node
void linkedList::delFront(){
	ptrType ptr = l;
	l = l->next;
	delete ptr;
}

//delete last node
void linkedList::delRear(){
	ptrType ptr = l;
	ptrType p = l;
	while (ptr->next != NULL)
		ptr = ptr->next;
	while (p->next != ptr)
		p = p->next;
	delete ptr;
	p->next = NULL;
}

//return count of node elements
int linkedList::getCount(){
	int i = 0;
	ptrType p = l;
	while (p != NULL){
		p = p->next;
		i++;
		}
	return i;
}

//get the nthelement
int linkedList::nthElement(int n){
	ptrType p = l;
	for (int i = 1; i < n; i++)
		p = p->next;
	int x = p->info;
	return x;
}

void linkedList::printList(){
	ptrType p = l;
	while (p != NULL){
		cout<<p->info;
		cout<<endl;
		p = p->next;
	}
}
