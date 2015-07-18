#ifndef __GAME_MECANICS_H__
#define __GAME_MECANICS_H__

#include <stdbool.h>
#include "GameState.h"
#include "GameConfig.h"

typedef enum { left, right, down } Direction;

bool blockIsAt(GameState *gameState, int i, int j);
void createWallAt(GameState *gameState, int i, int j);
bool spawnTetrisShp(GameState *gameState);
Color getRndmColor();
bool moveShape(GameState *gameState, Direction direction);
void dropShape(GameState *gameState);

#endif
