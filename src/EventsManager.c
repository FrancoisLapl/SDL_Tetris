#include "EventsManager.h"

Uint32 lastTickTimeStmp = 0;

static void handleKeyEvent() {
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

void handleEvent(GameState *gameState, Uint32 msDelay) {
	SDL_Event event;
	bool canPoll = true;
	
	Uint32 startTime = SDL_GetTicks();

	while(canPoll) {
		Uint32 elapsedTime = SDL_GetTicks() - startTime;
		
		if (elapsedTime >= msDelay) 
			break;
		
		if (gameState->gameStatus == running) {
			Uint32 deltaTime = lastTickTimeStmp - SDL_GetTicks();
			
			if (deltaTime >= G_GameConfig.blockDropDelayMs) {
				tickEventHandler(gameState);	
				lastTickTimeStmp -= deltaTime;
			}
		}
					

		while(SDL_PollEvent(&event) != 0) {
			switch(event.type) {
				case SDL_QUIT:
					gameState->quitRequested = true;
					canPoll = false;
					break;
				case SDL_KEYDOWN:
					fprintf(stderr,"key down\n");
					handleKeyEvent();
					break;
				default:
					break;
			}
		}
	}	
}
