#include "EventManager.h"

//Uint32 time = 1.0/G_GameConfig.blockDropsPerSec;

void handleGameEvents() {
}

void handleEvent(GameState *gameState, Uint32 msDelay){
	SDL_Event event;
	bool canPoll = true;
	
//	fprintf(stderr,"handling events\n");

	Uint32 startTime = SDL_GetTicks();

	while(canPoll) {
		Uint32 elapsedTime = SDL_GetTicks() - startTime;
		handleGameEvents();

		if (elapsedTime >= msDelay) 
			break;
		
		while(SDL_PollEvent(&event) != 0) {

			switch(event.type) {
				case SDL_QUIT:
					gameState->quitRequested = true;
					canPoll = false;
					break;
				default:
					break;
			}
		}
		
		const Uint8* currentKeyStates = SDL_GetKeyboardState( NULL );

		if(currentKeyStates[SDL_SCANCODE_UP]) {
			fprintf(stderr,"Up\n");
		}
		else if(currentKeyStates[SDL_SCANCODE_DOWN]) {
			fprintf(stderr,"Down\n");
		}
		else if(currentKeyStates[SDL_SCANCODE_LEFT]) {
			fprintf(stderr,"left\n");
		}
		else if(currentKeyStates[SDL_SCANCODE_RIGHT]) {
			fprintf(stderr,"right\n");
		}
		else if(currentKeyStates[SDL_SCANCODE_SPACE]) {
			fprintf(stderr,"space\n");
		}
	}	
}
