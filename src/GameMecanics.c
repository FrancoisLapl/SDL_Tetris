#include "GameMecanics.h"

static int computedRelXOffset(Uint32 x, Uint32 i) {
	Uint32 oldIndex = (x - G_GameConfig.gridLeftPadding) / G_GameConfig.blockSize;
	Uint32 deltaIndex = i - oldIndex;

	return deltaIndex * G_GameConfig.blockSize;
}

static int computedRelYOffset(Uint32 j) {
	return j * G_GameConfig.blockSize;
}

static Uint32 computeXFromIndex(Uint32 i) {
	return G_GameConfig.gridLeftPadding + i * G_GameConfig.blockSize;
}

static Uint32 computeYFromIndex(Uint32 j) {
	return G_GameConfig.gridTopPadding + j * G_GameConfig.blockSize;
}

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

static Block* createBlockAt(Uint32 i, Uint32 j, Uint8 r, Uint8 g, Uint8 b, Uint8 a) {

	if (i > G_GameConfig.numberOfColumns || j > G_GameConfig.numberOfRows) 
		fprintf(stderr, "Critical: Cannot create block at ,%d %d in grid\n", i, j);

	Uint32 calcXPos = computeXFromIndex(i);
	Uint32 calcYPos = computeYFromIndex(j);

	return createBlock(calcXPos, calcYPos, r, g, b , a);
}

static void generateWalls(GameState *gameState) {

	assert(gameState != NULL);
	int i;
	
	// Generate left wall
	for(i = 0; i < G_GameConfig.numberOfRows; i++) {

		Block *newBlock = createBlockAt(0, i
					     		 		 , 128
					     		 		 , 128
					     		 		 , 128
					     		 		 , 1);

		DL_push(&gameState->envBlockList, &newBlock);
	}
	
	// Generate right wall
	for(i = 0; i < G_GameConfig.numberOfRows; i++) {

		Block *newBlock = createBlockAt(G_GameConfig.numberOfColumns, i
					     		 							   	 	, 128
					     		 							   	 	, 128
					     		 							   	 	, 128
					     		 							   	 	, 1);
		
		DL_push(&gameState->envBlockList, &newBlock);
	}

	// Generate bottom wall
	for(i = 0; i <= G_GameConfig.numberOfColumns; i++) {

		Block *newBlock = createBlockAt(i, G_GameConfig.numberOfRows
					     	  		   , 128
					     	  		   , 128
					     	  		   , 128
				     		  		   , 1);
		
		DL_push(&gameState->envBlockList, &newBlock);
	}
}

void initialiseGameScene(GameState *gameState) {
		assert(gameState != NULL);

		generateWalls(gameState);
		spawnTetrisShp(gameState);
		return;
}

bool blockIsAt(GameState *gameState, int i, int j) {
	return true;
}

bool spawnTetrisShp(GameState *gameState) {

	int r = rand() % 7;
	
	Uint32 centerCoord = G_GameConfig.numberOfColumns / 2;

	Block *blockA;
	Block *blockB;
	Block *blockC;
	Block *blockD;

	switch (r) {
		case 0:
			//red left s shape 
			gameState->tetrisBlk.type = leftSShape;
			blockA = createBlockAt(centerCoord, 0, 255, 0, 0, 0);
			blockB = createBlockAt(centerCoord - 1, 0, 255, 0, 0, 0);
			blockC = createBlockAt(centerCoord, 1, 255, 0, 0, 0);
			blockD = createBlockAt(centerCoord + 1, 1, 255, 0, 0, 0);
			break;
		case 1:
			//blue left L shape 
			gameState->tetrisBlk.type = leftLShape;
			blockA = createBlockAt(centerCoord, 0, 0, 0, 255, 0);
			blockB = createBlockAt(centerCoord, 1, 0, 0, 255, 0);
			blockC = createBlockAt(centerCoord, 2, 0, 0, 255, 0);
			blockD = createBlockAt(centerCoord - 1, 2, 0, 0, 255, 0);
			break;
		case 2:
			//magenta right s shape
			gameState->tetrisBlk.type = rightSShape; 
			blockA = createBlockAt(centerCoord, 0, 255, 0, 255, 0);
			blockB = createBlockAt(centerCoord, 1, 255, 0, 255, 0);
			blockC = createBlockAt(centerCoord - 1, 1, 255, 0, 255, 0);
			blockD = createBlockAt(centerCoord + 1, 0, 255, 0, 255, 0);
			break;
		case 3:
			//yellow square
			gameState->tetrisBlk.type = square;
			blockA = createBlockAt(centerCoord - 1, 0, 255, 255, 0, 0);
			blockB = createBlockAt(centerCoord - 1, 1, 255, 255, 0, 0);
			blockC = createBlockAt(centerCoord, 0, 255, 255, 0, 0);
			blockD = createBlockAt(centerCoord, 1, 255, 255, 0, 0);
			break;
		case 4:
			//cyan line
			gameState->tetrisBlk.type = line;
			blockA = createBlockAt(centerCoord, 0, 0, 255, 255, 0);
			blockB = createBlockAt(centerCoord, 1, 0, 255, 255, 0);
			blockC = createBlockAt(centerCoord, 2, 0, 255, 255, 0);
			blockD = createBlockAt(centerCoord, 3, 0, 255, 255, 0);
			break;
		case 5:
			//purple t shape
			gameState->tetrisBlk.type = tShape;
			blockA = createBlockAt(centerCoord - 1, 0, 127, 0, 255, 0);
			blockB = createBlockAt(centerCoord, 0, 127, 0, 255, 0);
			blockC = createBlockAt(centerCoord + 1, 0, 127, 0, 255, 0);
			blockD = createBlockAt(centerCoord, 1, 127, 0, 255, 0);
			break;
		case 6:
			//orange right L shape
			gameState->tetrisBlk.type = rightLShape;
			blockA = createBlockAt(centerCoord, 0, 255, 128, 0, 0);
			blockB = createBlockAt(centerCoord, 1, 255, 128, 0, 0);
			blockC = createBlockAt(centerCoord, 2, 255, 128, 0, 0);
			blockD = createBlockAt(centerCoord + 1, 2, 255, 128, 0, 0);
			break;
		default:
			assert(false);
		}

		gameState->tetrisBlk.blockA = blockA;
		gameState->tetrisBlk.blockB = blockB;
		gameState->tetrisBlk.blockC = blockC;
		gameState->tetrisBlk.blockD = blockD;

		DL_push(&gameState->blockList, &blockA);
		DL_push(&gameState->blockList, &blockB);
		DL_push(&gameState->blockList, &blockC);
		DL_push(&gameState->blockList, &blockD);

		return true;
}

bool moveShape(GameState *gameState, Direction direction) {
	// add colision detection
	switch (direction) {
		case left:
			break;
		case right:
			break;
		case down:
			gameState->tetrisBlk.blockA->y += computedRelYOffset(1);
			gameState->tetrisBlk.blockB->y += computedRelYOffset(1);
			gameState->tetrisBlk.blockC->y += computedRelYOffset(1);
			gameState->tetrisBlk.blockD->y += computedRelYOffset(1);
			break;
		default:
			assert(false);
	}

	/*fprintf(stderr, "%d\n",gameState->tetrisBlk.blockA->y);
	fprintf(stderr, "%d\n",gameState->tetrisBlk.blockB->y);
	fprintf(stderr, "%d\n",gameState->tetrisBlk.blockC->y);
	fprintf(stderr, "%d\n",gameState->tetrisBlk.blockD->y);

	fprintf(stderr, "down it goes!\n");*/
	return true;
}

void dropShape(GameState *gameState) {
	return ;
}
