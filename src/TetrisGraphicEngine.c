#include "TetrisGraphicEngine.h"

static SDL_Renderer *sdlRenderer;

void initializeGraphicEngine(SDL_Renderer *renderer){
	sdlRenderer = renderer;
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
	
	SDL_RenderFillRect(sdlRenderer,&rect);
}

void renderGame(GameState *gameState){
	assert(gameState != NULL);

	fprintf(stderr,"rendering\n");
	
	static bool first = true;
	
	if (first) {	
		Block *newKidOnTheBlock = malloc(sizeof(Block));

		newKidOnTheBlock->x = 100;
		newKidOnTheBlock->y = 0;
		newKidOnTheBlock->color.r = 0;
		newKidOnTheBlock->color.g = 0;
		newKidOnTheBlock->color.b = 255;
		newKidOnTheBlock->color.a = 255;
	
		assert(newKidOnTheBlock != NULL);
		assert(&gameState->blockList != NULL);

		DL_push(&gameState->blockList,newKidOnTheBlock);
		first = false;
	}

	renderBackground(); 

	int i;

	for(i = 0;i < gameState->blockList.count;i++) {
		Block block;
		
		DL_getAt(&gameState->blockList,i,&block);		
		
		//block.y--;

		DL_removeAt(&gameState->blockList,i);
		DL_insertAt(&gameState->blockList,i,&block);
		renderBlock(&block);
	}

	SDL_RenderPresent(sdlRenderer);
}
