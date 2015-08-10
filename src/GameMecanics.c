#include "GameMecanics.h"

static Block* createBlock(Uint32 x, Uint32 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a) {
	Block *block = malloc(sizeof(Block));
	
	assert(block != NULL);

	block->x = x;
	block->y = y; 

	block->color.r = r;
	block->color.g = g;
	block->color.b = b;
	block->color.a = a;
	
	return block;	
}

static void putTetrisBlock(GameState *gameState) {
	
	Block *newBlock = createBlock(100, 50
				     	 , 128
				     	 , 128
				     	 , 128
			     		 , 1);
		
	DL_push(&gameState->blockList, &newBlock);
	
}

static void generateWalls(GameState *gameState) {

	assert(gameState != NULL);
	int i;
	int topPadding = 20;
	int leftPadding = 15;
	
	// Generate left wall
	for(i = 0; i < G_GameConfig.numberOfRows - 1; i++) {

		int yPos = topPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(leftPadding, yPos
					     		 , 128
					     		 , 128
					     		 , 128
					     		 , 1);
		
		DL_push(&gameState->envBlockList, &newBlock);
	}
	
	// Generate right wall
	int rgtWllxPos = leftPadding + G_GameConfig.blockSize * (G_GameConfig.numberOfColumns - 1);

	for(i = 0; i < G_GameConfig.numberOfRows - 1; i++) {

		int yPos = topPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(rgtWllxPos, yPos
					     		 , 128
					     		 , 128
					     		 , 128
					     		 , 1);
		
		DL_push(&gameState->envBlockList, &newBlock);
	}

	// Generate bottom wall
	int btmWllyPos = topPadding + G_GameConfig.blockSize * (G_GameConfig.numberOfRows - 1); 

	for(i = 0; i < G_GameConfig.numberOfColumns; i++) {

		int xPos = leftPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(xPos, btmWllyPos
					     	  , 128
					     	  , 128
					     	  , 128
				     		  , 1);
		
		DL_push(&gameState->envBlockList, &newBlock);
	}
}

void initialiseGameScene(GameState *gameState) {
	
		generateWalls(gameState);
		putTetrisBlock(gameState);
}

bool blockIsAt(GameState *gameState, int i, int j) {

}

bool spawnTetrisShp(GameState *gameState) {
	int r = rand() % 7;
	putTetrisBlock(gameState);
	switch (r) {
		case 1:
			//red
			color->r = 255;
			color->g = 0;
			color->b = 0;
			color->a = 0;
			break;
		case 2:
			//blue
			color->r = 0;
			color->g = 0;
			color->b = 255;
			color->a = 0;
			break;
		case 3:
			//magenta
			color->r = 255;
			color->g = 0;
			color->b = 255;
			color->a = 0;
			break;
		case 4:
			//yellow
			color->r = 255;
			color->g = 255;
			color->b = 0;
			color->a = 0;
			break;
		case 5:
			//cyan
			color->r = 0;
			color->g = 255;
			color->b = 255;
			color->a = 0;
			break;
		case 6:
			//purple
			color->r = 255;
			color->g = 0;
			color->b = 0;
			color->a = 0;
			break;
		case 7:
			//orange
			color->r = 255;
			color->g = 128;
			color->b = 0;
			color->a = 0;
			break;
		}
}

bool moveShape(GameState *gameState, Direction direction) {
	
}

void dropShape(GameState *gameState) {

}
