#include "TetrisGraphicEngine.h"

static SDL_Renderer *sdlRenderer;

void initializeGraphicEngine(SDL_Renderer *renderer){
	sdlRenderer = renderer;
}

static void generateWall(GameState *gameState, Uint32 startX, Uint32 startY, Uint32 endX, Uint32 endY){
	int x,y;
	
	for(x = startX; x <= endX; x += G_GameConfiguration.blockSize) {
		for(y = startY; y <= endY; y+= G_GameConfiguration.blockSize) {
			Block *newBlock = malloc(sizeof(Block));

			newBlock->x = x;
			newBlock->y = y;
			newBlock->color.r = 165;
			newBlock->color.g = 165;
			newBlock->color.b = 165;
			newBlock->color.a = 1;
	
			assert(newBlock != NULL);
			assert(&gameState->blockList != NULL);

			DL_push(&gameState->blockList, &newBlock);
		}
	}	
}

static void renderBackground(){
	SDL_SetRenderDrawColor(sdlRenderer, 0, 0, 0, 0);
	SDL_RenderClear(sdlRenderer);
}

static void renderBlock(Block *block){
	assert(block != NULL);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r, block->color.g, block->color.b, block->color.a);

	SDL_Rect rect;
	rect.x = block->x;
	rect.y = block->y;

	rect.w = 50;
	rect.h = 50;
	
	SDL_RenderFillRect(sdlRenderer, &rect);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r - 40 
					  , block->color.g - 40
					  , block->color.b - 40
					  , block->color.a);
	/*rect.x += 30;
	rect.y += 30;*/
	SDL_RenderDrawRect(sdlRenderer, &rect);
}

void renderGame(GameState *gameState){
	assert(gameState != NULL);

	fprintf(stderr,"rendering\n");
	
	static bool first = true;
	
	if (first) {	
		Block *newBlock = malloc(sizeof(Block));

		newBlock->x = 100;
		newBlock->y = 0;
		newBlock->color.r = 0;
		newBlock->color.g = 0;
		newBlock->color.b = 255;
		newBlock->color.a = 255;
	
		assert(newBlock != NULL);
		assert(&gameState->blockList != NULL);

		DL_push(&gameState->blockList, &newBlock);
		first = false;
		generateWall(gameState, 0, 0, 0, 400);
		generateWall(gameState, 30, 0, 0, 400);
	}

	renderBackground(); 

	int i;

	for(i = 0;i < gameState->blockList.count;i++) {
		Block *block;

		DL_getAt(&gameState->blockList,i,&block);		

		renderBlock(block);
	}

	SDL_RenderPresent(sdlRenderer);

}

