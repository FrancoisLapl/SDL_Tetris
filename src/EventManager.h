#ifndef __EVENT_MANAGER_H__
#define __EVENT_MANAGER_H__

#include <stdbool.h>
#include <SDL2/SDL.h>
#include "DynamicList.h"
#include "GameState.h"

void handleEvent(GameState *gameState, Uint32 msDelay);

#endif
