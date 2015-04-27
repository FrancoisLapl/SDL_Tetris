#include "TetrisGraphicEngine.h"

static SDL_Renderer *sdlRenderer;

void initializeGraphicEngine(SDL_Renderer *renderer){
	sdlRenderer = renderer;
}

static void generateWall(GameState *gameState, Uint32 x1, Uint32 y1, Uint32 x2, Uint32 y2){

	assert(gameState != NULL);

	int deltaX = x2 - x1;
	int deltaY = y2 - y1;
	int error = 0;
	int deltaError = abs(deltaY / deltaX);
	int y = y1;
	
	int x;

	for(x=x1; x <= x2; x++) {
		Block *newBlock = malloc(sizeof(Block));

		assert(newBlock != NULL);

		newBlock->x = x * G_GameConfiguration.blockSize;
		newBlock->y = round(y) * G_GameConfiguration.blockSize;
		newBlock->color.r = 165;
		newBlock->color.g = 165;
		newBlock->color.b = 165;
		newBlock->color.a = 1;
		fprintf(stderr," y addr: %d\n", newBlock->y);
		DL_push(&gameState->blockList, &newBlock);
		
		while(error >= 0.5) 
			y = y + m;
	}
}

static void renderBackground(){
	SDL_SetRenderDrawColor(sdlRenderer, 0, 0, 0, 0);
	SDL_RenderClear(sdlRenderer);
}

static void renderBlock(Block *block){
	assert(block != NULL);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r
					  , block->color.g
					  , block->color.b
					  , block->color.a);

	SDL_Rect rect;
	rect.x = block->x;
	rect.y = block->y;

	rect.w = G_GameConfiguration.blockSize;
	rect.h = G_GameConfiguration.blockSize;
	
	SDL_RenderFillRect(sdlRenderer, &rect);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r - 40 
					  , block->color.g - 40
					  , block->color.b - 40
					  , block->color.a);

	SDL_RenderDrawRect(sdlRenderer, &rect);
}

void renderGame(GameState *gameState){
	assert(gameState != NULL);

//	fprintf(stderr,"rendering\n");
	
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
		generateWall(gameState, 0, 0, 100, 0);
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
