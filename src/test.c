#include "test.h"

void printListElements(DynamicList *list)
{
	int x;
	for(x = -2; x <= list->count+2; x++){
		int element = 777;
		getAt(list,x,&element);
		printf("%d: %d\n",x,element);
	}
	
}

void createListOnHeapTest()
{
	void *list = malloc(sizeof(DynamicList));

        initialize(list,sizeof(int),NULL,10);  
	
	int i;
	for (i = 0; i <= 41; i++){
		push(list,&i);	
	}

	printListElements(list);	
	deleteList(list,NULL);
	free(list);
}

void createListOnStackTest()
{
	DynamicList list;    
        initialize(&list,sizeof(int),NULL,10);  
	
	int i;
	for (i = 0; i <= 11; i++){
		push(&list,&i);	
	}

	printListElements(&list);	
	deleteList(&list,NULL);
}


void runListTests(){
	createListOnStackTest();								    
	createListOnHeapTest();
	
}	

void runTests(){
	runListTests();
}
