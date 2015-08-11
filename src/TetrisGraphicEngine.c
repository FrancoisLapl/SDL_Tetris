#include "TetrisGraphicEngine.h"

static SDL_Renderer *sdlRenderer;

void initializeGraphicEngine(SDL_Renderer *renderer) {
	assert(renderer != NULL);
	sdlRenderer = renderer;
}

static void renderBackground() {
	SDL_SetRenderDrawColor(sdlRenderer, 0, 0, 0, 0);
	SDL_RenderClear(sdlRenderer);
}

static void renderBlock(Block *block) {
	assert(block != NULL);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r
					  				  , block->color.g
					  				  , block->color.b
					 				  , block->color.a);

	SDL_Rect rect;
	rect.x = block->x;
	rect.y = block->y;

	rect.w = G_GameConfig.blockSize;
	rect.h = G_GameConfig.blockSize;
	
	SDL_RenderFillRect(sdlRenderer, &rect);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r/1.4
					  				  , block->color.g/1.4
					  				  , block->color.b/1.4
					  				  , block->color.a);

	SDL_RenderDrawRect(sdlRenderer, &rect);
}

void renderGame(GameState *gameState){
	assert(gameState != NULL);

	renderBackground(); 

	int i;
	//render regular blocks
	for(i = 0;i < gameState->blockList.count;i++) {
		Block *block;
		DL_getAt(&gameState->blockList,i,&block);		
		renderBlock(block);
	}

	//render environement block
	for(i = 0;i < gameState->envBlockList.count;i++) {
		Block *block;
		DL_getAt(&gameState->envBlockList,i,&block);		
		renderBlock(block);
	}

	SDL_RenderPresent(sdlRenderer);
}
