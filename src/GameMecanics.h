#ifndef __GAME_MECANICS_H__
#define __GAME_MECANICS_H__

#include <stdlib.h>
#include <stdbool.h>
#include "GameState.h"
#include "GameConfig.h"

typedef enum { left, right, down } Direction;

void initialiseGameScene(GameState *gameState);
bool blockIsAt(GameState *gameState, int i, int j);
void getRndmColor(Color *color);
bool spawnTetrisShp(GameState *gameState);
bool moveShape(GameState *gameState, Direction direction);
void dropShape(GameState *gameState);

#endif
