#ifndef __TETRIS_GRAPHIC_ENGINE_H__
#define __TETRIS_GRAPHIC_ENGINE_H__

#include <SDL2/SDL.h>
#include <assert.h>

#include "DynamicList.h"
#include "GameState.h"
#include "GameConfig.h"

void initializeGraphicEngine(SDL_Renderer *renderer);
void renderGame(GameState *gameState);

#endif
