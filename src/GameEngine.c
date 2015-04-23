#include "GameEngine.h"

void runGameLoop(SDL_Window* window,SDL_Renderer* renderer)
{
	fprintf(stderr, " Error(s) before entering main gameloop: %s\n", SDL_GetError());
	
	Uint32 delay = 0;
	GameState gameState;
	
	while(!gameState.quitRequested){

		handleEvent(&gameState,delay);	
		
		renderGame(&gameState);
	}

	fprintf(stderr, "Error(s) when exiting: %s\n", SDL_GetError());
}
