#ifndef __TETRIS_EVENTS_MANAGER_H__
#define __TETRIS_EVENTS_MANAGER_H__

#include <assert.h>

#include "GameState.h"
#include "GameConfig.h"
#include "GameMecanics.h"

void clickUpEventHandler(GameState *gameState);
void clickDownEventHandler(GameState *gameState);
void clickLeftEventHandler(GameState *gameState);
void clickRightEventHandler(GameState *gameState);
void clickSpaceEventHandler(GameState *gameState);
void tickEventHandler(GameState *gameState);

#endif
