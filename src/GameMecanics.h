#ifndef __GAME_MECANICS_H__
#define __GAME_MECANICS_H__

#include <stdlib.h>
#include <stdbool.h>
#include "GameState.h"
#include "GameConfig.h"

typedef enum { left, right, down } Direction;

typedef struct {
	int x;
	int y;
} Point;

void initialiseGameScene(GameState *gameState);
void rotateShape(GameState *gameState);
void eraseFullLines(GameState *gameState);
bool spawnTetrisShp(GameState *gameState);
bool moveShape(GameState *gameState, Direction direction);
void dropShape(GameState *gameState);

#endif
