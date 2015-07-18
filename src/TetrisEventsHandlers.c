#include "TetrisEventsHandlers.h"

void tickEventHandler(GameState *gameState) {
	if(gameState->gameStatus != starting || gameState->gameStatus != running)
		return;
	
	if (!moveShape(gameState,down)) {
		
	}

}
