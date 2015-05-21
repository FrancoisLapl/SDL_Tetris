#ifndef __Game_State_H__
#define __Game_State_H__

#include <stdbool.h>
#include "DynamicList.h"

typedef struct {
	Uint8 r;
	Uint8 g;
	Uint8 b;
	Uint8 a;
} Color;

typedef struct {
	Uint32 x;
	Uint32 y;
	Color color;
} Block;

typedef enum {starting, running, paused, stopped} GameStatus;

typedef struct {
	bool quitRequested;
	GameStatus gameStatus;
	Uint32 currentLevel;
	Uint32 currentScore;
	DynamicList blockList;
} GameState;	


#endif
