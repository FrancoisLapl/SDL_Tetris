#ifndef __DynamicList_H__
#define __DynamicList_H__
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

typedef enum { MergeSort,HeapSort,QuickSort } EnuSortAlgorithm; 

typedef struct{
	int objectSize;
	int length;
	int count;
	void* elements;
	void (*cleanFunction)(void *object);
} DynamicList;

void DL_initialize(DynamicList *list, int objectSize, void(*cleanFunction)(void *object), int initialSize);
void DL_removeAt(DynamicList *list, int index);
void DL_insertAt(DynamicList *list, int index, const void *inObject);
void DL_getAt(DynamicList *list, int index, void *outObject);
void DL_push(DynamicList *list, const void *object);
/*void DL_pop(DynamicList *list, void *outObject);
void DL_sort(DynamicList *list, void(*compareFunction)(void *objectA,void *objectB), EnuSortAlgorithm sortType);
*/
void DL_printListInfo(DynamicList *list);
void DL_deleteList(DynamicList *list);
#endif


