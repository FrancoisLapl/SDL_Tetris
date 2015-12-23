#include "EventsManager.h"

Uint32 aSleepTime = 0;
Uint32 lastAwakeTime = 0;

static void handleKeyEvent(GameState *gameState) 
{
	const Uint8* currentKeyStates = SDL_GetKeyboardState(NULL);

	if(currentKeyStates[SDL_SCANCODE_UP]) {
		fprintf(stderr,"Up\n");
		clickUpEventHandler(gameState);
	}
	else if(currentKeyStates[SDL_SCANCODE_DOWN]) {
		fprintf(stderr,"Down\n");
		clickDownEventHandler(gameState);
	}
	else if(currentKeyStates[SDL_SCANCODE_LEFT]) {
		fprintf(stderr,"left\n");
		clickLeftEventHandler(gameState);
	}
	else if(currentKeyStates[SDL_SCANCODE_RIGHT]) {
		fprintf(stderr,"right\n");
		clickRightEventHandler(gameState);
	}
	else if(currentKeyStates[SDL_SCANCODE_SPACE]) {
		clickSpaceEventHandler(gameState);
		fprintf(stderr,"space\n");
	}
}

static bool itsTimeToTick(GameState *gameState) 
{
	if(gameState->gameStatus == starting)
		lastAwakeTime = SDL_GetTicks();

	if (gameState->gameStatus != running)
		return false;

	Uint32 chronoTap = SDL_GetTicks();
	aSleepTime += chronoTap - lastAwakeTime;
	lastAwakeTime = chronoTap;
		
	if (aSleepTime >= G_GameConfig.blockDropDelayMs) {
		fprintf(stderr, "aSleepTime = %d\n", aSleepTime);
		aSleepTime -= G_GameConfig.blockDropDelayMs;
		return true;
	}

	return false;
}

void handleEvent(GameState *gameState, Uint32 msDelay) 
{

	if (msDelay <= 0)
		return;

	SDL_Event event;
	bool canPoll = true;
	
	Uint32 startTime = SDL_GetTicks();

	while(canPoll) {

		Uint32 elapsedTime = SDL_GetTicks() - startTime;

		if (elapsedTime >= msDelay) {
			//Event pooling allocated time is exausted
			canPoll = false;
			break;
		}
		
		if(itsTimeToTick(gameState)) {
			tickEventHandler(gameState);	
		}

		while(SDL_PollEvent(&event) != 0) {
			switch(event.type) {
				case SDL_QUIT:
					gameState->quitRequested = true;
					canPoll = false;
					break;
				case SDL_KEYDOWN:
					fprintf(stderr,"key down\n");
					handleKeyEvent(gameState);
					break;
				default:
					break;
			}
		}
	}	
}
