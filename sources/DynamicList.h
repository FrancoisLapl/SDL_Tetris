#ifndef __DynamicList_H__
#define __DynamicList_H__

struct DynamicList{
	int objectSize;
	int length;
	void* elements;
};

void initialize(DynamicList *listToInitialize,int objectSize);
void add(DynamicList *list,void *object);
void removeAt(DynamicList *list, int index);
void insertAt(DynamicList *list, int index, void *object);
void deleteInstance(DynamicList *list, void (*cleanFunction)(void *object));

#endif


