#ifndef __GAME_ENGINE_H__
#define __GAME_ENGINE_H__

#include <assert.h>
#include <SDL2/SDL.h>

#include "DynamicList.h"
#include "GameState.h"
#include "GameConfig.h"
#include "EventsManager.h"
#include "TetrisGraphicEngine.h"
#include "GameMecanics.h"

void runGameLoop(SDL_Window* window,SDL_Renderer* renderer);

#endif
