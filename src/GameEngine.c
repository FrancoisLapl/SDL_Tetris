#include "GameEngine.h"

static void cleanRessources(GameState *gameState){
	DL_deleteList(&gameState->blockList);
}

static void cleanBlock(void *elementPointer){
	assert(elementPointer != NULL);

	Block* pointerToBlock = *((void**)elementPointer);
	free(pointerToBlock);
}

static void initializeGameState(GameState *gameState){
	DL_initialize(&gameState->blockList, sizeof(Block*), cleanBlock, 32);
}

void runGameLoop(SDL_Window *window,SDL_Renderer *renderer)
{
	fprintf(stderr, " Error(s) before entering main gameloop: %s\n", SDL_GetError());
	SDL_ClearError();
	
	Uint32 delay = 6;
	GameState gameState;
	
	initializeGameState(&gameState);
	initializeGraphicEngine(renderer);

	while(!gameState.quitRequested){
		handleEvent(&gameState, delay);	
		renderGame(&gameState);
	}
	
	cleanRessources(&gameState);
	fprintf(stderr, "Error(s) when exiting: %s\n", SDL_GetError());
}
