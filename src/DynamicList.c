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
	
	if (multiple > 0) // if the multiple is 0 or lower we compact the list isted of extendind his size
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

void DL_initialize(DynamicList *list, int objectSize, void (*cleanFunction)(void *object), int initialSize)
{
	assert(objectSize > 0 && initialSize > 0);
	list->objectSize = objectSize;
	list->length = initialSize;
	list->count = 0;
	list->elements = malloc(objectSize * initialSize);	

	if (cleanFunction != NULL) {
		list->cleanFunction = cleanFunction;
	} else list->cleanFunction = NULL;

	assert(list->elements != NULL);
}

void DL_removeAt(DynamicList *list, int index)
{
	assert(indexInBound(list,index) == true);	
	
	void* destination = list->elements + (index * list->objectSize);
	void* source = destination + list->objectSize;
	int size = list->count - index; 
	
	memmove(destination, source, size);

	list->count--;
	compactList(list);
}

void DL_insertAt(DynamicList *list, int index, const void *inObject)
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

void DL_getAt(DynamicList *list, int index, void *outObject)
{
	assert(list != NULL);
	assert(outObject != NULL);

	if(!indexInBound(list,index)){
		printf("index %d is out of bound\n",index);
		return;
	}
	
	char *source = list->elements + index * list->objectSize;
	memcpy(outObject, source, list->objectSize);
}

void DL_push(DynamicList *list, const void *object)
{
	assert(list != NULL);
	assert(object != NULL);

	if(!hasSpaceLeft(list))
		resizeList(list,2);

	memcpy(list->elements + list->objectSize * list->count, object, list->objectSize);
	list->count++;
}

/*
void DL_pop(DynamicList *list, void *outObject)
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

void DL_sort(DynamicList *list, void (*compareFunction)(void objectA,void objectB), EnuSortAlgorithm sortType)
{
	
}
*/

void DL_deleteList(DynamicList *list)
{
	if(list->cleanFunction != NULL) {
		int i;
		for(i = 0;i < list->count;i++)
		{
			list->cleanFunction(i * list->objectSize + list->elements);
		}
	}

	free(list->elements);

	return;
}

void DL_printListInfo(DynamicList *list)
{
	printf("le count est %d, le objectSize est %d,le length est %d \n",list->count
			                                                                             ,list->objectSize
												     ,list->length);
}
