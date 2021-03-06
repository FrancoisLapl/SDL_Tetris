#include "TetrisEventsHandlers.h"

void clickUpEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);
	fprintf(stderr, "Rotation \n");

	if(gameState->gameStatus != running)
		return;

	rotateShape(gameState);
}

void clickDownEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);

	if(gameState->gameStatus != running)
		return;

	if (!moveShape(gameState, down)) {
		eraseFullLines(gameState);
	}
}

void clickLeftEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);
	if(gameState->gameStatus != running)
		return;

	if (!moveShape(gameState, left)) {
	}

}

void clickRightEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);
	if(gameState->gameStatus != running)
		return;

	if (!moveShape(gameState, right)) {
		fprintf(stderr, "collision!\n");
	}
}

void clickSpaceEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);

	if(gameState->gameStatus != running)
		return;

	dropShape(gameState);
	eraseFullLines(gameState);
	spawnTetrisShp(gameState);
}

void tickEventHandler(GameState *gameState) 
{
	assert(gameState != NULL);

	//if game is not running or starting, don't respond to tick event.
	if(gameState->gameStatus != starting && gameState->gameStatus != running)
		return;

	if (!moveShape(gameState, down)) {
		fprintf(stderr, "collision!\n");
		eraseFullLines(gameState);
		spawnTetrisShp(gameState);
	}
}
