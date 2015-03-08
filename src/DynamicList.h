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

void initialize(DynamicList *list, int objectSize, void(*cleanFunction)(void *object), int initialSize);
void removeAt(DynamicList *list, int index);
void insertAt(DynamicList *list, int index, const void *inObject);
void getAt(DynamicList *list, int index, void *outObject);
void push(DynamicList *list, const void *object);
/*void pop(DynamicList *list, void *outObject);
void sort(DynamicList *list, void(*compareFunction)(void *objectA,void *objectB), EnuSortAlgorithm sortType);
*/
void printListInfo(DynamicList *list);
void deleteList(DynamicList *list, void(*cleanFunction)(void *object));
#endif


