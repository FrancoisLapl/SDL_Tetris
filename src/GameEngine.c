#include "GameEngine.h"

static void cleanRessources(GameState *gameState){
	DL_deleteList(&gameState->blockList);
	DL_deleteList(&gameState->envBlockList);
}

static void freeBlock(void *elementPointer){
	assert(elementPointer != NULL);

	Block* pointerToBlock = *((void**)elementPointer);
	free(pointerToBlock);
}

static void initializeGameState(GameState *gameState){
	DL_initialize(&gameState->blockList, sizeof(Block*), freeBlock, 32);
	DL_initialize(&gameState->envBlockList, sizeof(Block*), freeBlock, 32);

	gameState->quitRequested = false;
	gameState->gameStatus = starting;
	gameState->currentLevel = 0;
	gameState->currentScore = 0;
}

void runGameLoop(SDL_Window *window,SDL_Renderer *renderer)
{
	fprintf(stderr, " Error(s) before entering main gameloop: %s\n", SDL_GetError());
	SDL_ClearError();
	
	Uint32 loopStartTime = 0;
	Uint32 elapsedTime = 0;
	double loopTime = 1000 / G_GameConfig.targetFps; 

	GameState gameState;

	initializeGameState(&gameState);
	initializeGraphicEngine(renderer);

	while(!gameState.quitRequested){
		elapsedTime = 0;
		loopStartTime = SDL_GetTicks();

		renderGame(&gameState);

	 	elapsedTime = SDL_GetTicks() - loopStartTime;	
		
		fprintf(stderr,"rendering time is: %d \n",elapsedTime);

		handleEvent(&gameState,  loopTime - elapsedTime);	

		if ( gameState.gameStatus == starting) {
			gameState.gameStatus = running;
		}
	}
	
	cleanRessources(&gameState);
	fprintf(stderr, "Error(s) when exiting: %s\n", SDL_GetError());
}
