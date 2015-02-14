#include "DynamicList.h"

static bool hasSpaceLeft(DynamicList *list)
{
	if((list->length - (list->count * list->objectSize)) > 0)
		return true;
	return false;
}

static void resizeList(DynamicList *list, int multiple)
{
	if(multiple < 0)
		return;
	
	int newSize;	
	
	if (multiple > 0)
		newSize = list->length * multiple;
	else newSize = list->count * list->objectSize;

	void *reallocatedSpace = realloc(list->elements, newSize);

	if(reallocatedSpace == NULL)
		printf("can't grow list, realloc failed. list object size: %d length: %d multiple: %d\n",list->objectSize,list->length,multiple);
	
	list->elements = reallocatedSpace;
	list->length = newSize;
}

static void compactList(DynamicList *list)
{
	resizeList(list, 0);
}

static bool indexInBound(DynamicList *list, int index)
{
	if(list->count > 0 && index < list->count && index >= 0 && list != NULL){
		return true;
	}
	return false;
}

void initialize(DynamicList *list, int objectSize, void (*cleanFunction)(void *object), int initialSize)
{
	assert(objectSize > 0 && initialSize > 0);
	list->objectSize = objectSize;
	list->length = initialSize;
	list->count = 0;
	list->elements = malloc(objectSize * initialSize);	
	list->cleanFunction = cleanFunction;
	assert(list->elements != NULL);
}

void removeAt(DynamicList *list, int index)
{
	if(!indexInBound(list, index))
		return;
	
	
	void* destination = list->elements + (index * list->objectSize);
	void* source = destination + list->objectSize;
	int size = list->count - index; 
	
	memmove(destination, source, size);

	list->count--;
	compactList(list);
}

void insertAt(DynamicList *list, int index, const void *inObject)
{
	if(!indexInBound(list, index)){
		printf("index %d is out of bound\n", index);
		return;
	}

	if(!hasSpaceLeft(list)){
		resizeList(list,2);
	}

	void *destination = list->elements + ((index + 1) * list->objectSize);
	void *source = destination - list->objectSize;
	int size = list->objectSize*(list->count - index + 1);

	memmove(destination, source, size);	
	
	memcpy(source, inObject, list->objectSize);
}

void getAt(DynamicList *list, int index, void *outObject)
{
	if(!indexInBound(list,index)){
		printf("index %d is out of bound\n",index);
		return;
	}
	
	char *source = list->elements + index * list->objectSize;
	memcpy(outObject, source, list->objectSize);
}

void push(DynamicList *list, const void *object)
{
	if(!hasSpaceLeft(list))
		resizeList(list,2);

	memcpy(list->elements + list->objectSize * list->count, object, list->objectSize);
	list->count++;
}

/*
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
*/

void deleteList(DynamicList *list, void (*cleanFunction)(void *object))
{
	if(cleanFunction != NULL) {
		int i;
		for(i = 0;i <= list->count;i++)
		{
			cleanFunction(i * list->objectSize + list->elements);
		}
	}

	free(list->elements);

	return;
}