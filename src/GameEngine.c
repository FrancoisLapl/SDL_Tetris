#include "GameEngine.h"

static void cleanRessources(GameState *gameState){
	DL_deleteList(&gameState->blockList);
}

static void initialiseGameState(GameState *gameState){
	DL_initialize(&gameState->blockList, sizeof(Block), NULL, 32);
}

void runGameLoop(SDL_Window *window,SDL_Renderer *renderer)
{
	fprintf(stderr, " Error(s) before entering main gameloop: %s\n", SDL_GetError());
	SDL_ClearError();
	
	Uint32 delay = 10;
	GameState gameState;
	
	initialiseGameState(&gameState);
	initialiseGraphicEngine(renderer);

	while(!gameState.quitRequested){
		handleEvent(&gameState, delay);	
		renderGame(&gameState);
	}
	
	cleanRessources(&gameState);
	fprintf(stderr, "Error(s) when exiting: %s\n", SDL_GetError());
}
