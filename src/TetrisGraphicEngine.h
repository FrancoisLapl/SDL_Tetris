#ifndef __TETRIS_GRAPHIC_ENGINE_H__
#define __TETRIS_GRAPHIC_ENGINE_H__

#include <SDL2/SDL.h>

#include "DynamicList.h"
#include "GameState.h"
#include "GameConfig.h"

void initialiseGraphicEngine(SDL_Renderer *renderer);
void renderGame(GameState *gameState);

#endif
