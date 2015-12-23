#include "test.h"

void printListElements(DynamicList *list)
{
	int x;
	for(x = -2; x <= list->count+2; x++){
		int element = 777;
		DL_getAt(list,x,&element);
		printf("%d: %d\n",x,element);
	}
}

void createListOnHeapTest()
{
	void *list = malloc(sizeof(DynamicList));

    DL_initialize(list, sizeof(int), NULL, 10);  
	
	int i;
	for (i = 0; i <= 41; i++){
		DL_push(list,&i);	
	}

	printListElements(list);	
	DL_deleteList(list);
	free(list);
}

void createListOnStackTest()
{
	DynamicList list;    
    DL_initialize(&list, sizeof(int), NULL, 10);  
	
	int i;
	for (i = 0; i <= 11; i++) {
		DL_push(&list,&i);	
	}

	printListElements(&list);	
	DL_deleteList(&list);
}

void runListTests()
{
	createListOnStackTest();
	createListOnHeapTest();
}	

void runTests()
{
	runListTests();
}
