#include "EventManager.h"

void handleEvent(GameState *gameState, Uint32 msDelay){
	SDL_Event event;
	bool canPoll = true;
	
	fprintf(stderr,"handling events\n");

	Uint32 startTime = SDL_GetTicks();

	while(canPoll) {
		Uint32 elapsedTime = SDL_GetTicks() - startTime;
		
		if (elapsedTime >= msDelay) 
			break;
		
		SDL_PollEvent(&event);
		
		switch(event.type) {
			case SDL_QUIT:
				gameState->quitRequested = true;
				canPoll = false;
				break;
			default:
				break;
		}
	}	
}
