#include "DynamicList.h"

void initialize(DynamicList *list, int objectSize, int initialSize)
{
	assert(objectSize > 0 && initialSize > 0);
	list->objectSize = objectSize;
	list->length = initialSize;
	list->count = 0;
	list->elements = malloc(objectSize * initialSize);	
	assert(*list->elements != NULL);
}
/*
void removeAt(DynamicList *list, int index)
{
	assert(list->count > 0 && index <= list->count && index >= 0);
	list->count--;

	int bytesLength = (list->count * list->objectSize) - (index*list->objectLength);
	char* source = ;
	char* destination;

	while(byteLength--){
		*destination
	}
}

void insertAt(DynamicList *list, int index, const void *object)
{
		
}

void getAt(DynamicList *list, int index, void *outObject)
{
	int wordCount = list->objectSize;

	char *destination = (char*)outObject;
	char *source = &list->elements[index] + wordCount;

	while(wordCount--){
		*destinatin-- =	*sourc--;	
	}

	return;
}

void push(DynamicList *list, const void *object)
{
	int wordCount = list->objectSize;

	char *source = (char*)object;
	char *destination = &list->elements[index] + wordCount;

	while(wordCount--){
		*destinatin-- =	*sourc--;	
	}

	return;
}

void pop(DynamicList *list, void *outObject)
{
	int wordCount = list->objectSize;
	list->count--;
	char *destination = (char*)outObject;
	char *source = &list->elements[index] + wordCount;

	while(wordCount--){
		*destinatin-- =	*sourc--;	
	}

	return;
}

void sort(DynamicList *list, void (*compareFunction)(void objectA,void objectB), EnuSortAlgorithm sortType)
{
	
}

void deleteList(DynamicList *list, void (*cleanFunction)(void *object))
{
	if(cleanFunction == NULL) return;

	int i;
	for(i = 0;i <= list->count;i++)
	{
		cleanFunction(i * list->objectSize + &list->elements);
	}
	
	free(&list->elements);
	free(&list);

	return;
}
*/
