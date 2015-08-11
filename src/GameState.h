#ifndef __GAME_STATE_H__
#define __GAME_STATE_H__

#include <stdbool.h>
#include <SDL2/SDL.h>
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

typedef enum { starting, running, paused, stopped } GameStatus;

typedef enum { square, line, leftLShape, rightLShape, tShape, leftSShape, rightSShape } ShapeType;

typedef struct {
	ShapeType type;
	Block* blockA;
	Block* blockB;
	Block* blockC;
	Block* blockD;
} TetrisShape;

typedef struct {
	bool quitRequested;
	GameStatus gameStatus;
	Uint32 currentLevel;
	Uint32 currentScore;
	DynamicList envBlockList;
	DynamicList blockList;
	TetrisShape tetrisBlk; 
} GameState;	

#endif
