#ifndef __EVENTS_MANAGER_H__
#define __EVENTS_MANAGER_H__

#include <stdbool.h>
#include <SDL2/SDL.h>
#include "DynamicList.h"
#include "GameState.h"
#include "GameConfig.h"
#include "TetrisEventsHandlers.h"
#include "GameMecanics.h"

void handleEvent(GameState *gameState, Uint32 msDelay);

#endif
