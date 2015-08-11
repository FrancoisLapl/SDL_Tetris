#include "TetrisEventsHandlers.h"

void tickEventHandler(GameState *gameState) {
	assert(gameState != NULL);

	//if game is not running or starting, don't respond to tick event.
	if(gameState->gameStatus != starting || gameState->gameStatus != running)
		return;
	
	if (!moveShape(gameState,down)) {
		
	}

}
