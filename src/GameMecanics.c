#include "GameMecanics.h"

static bool twoBlockAreOverlapping(Block *blockA, Block *blockB) {
	if (blockA->x == blockB->x && blockA->y == blockB->y)
		return true;
	return false;
}

static bool thereIsColision(GameState *gameState, Block *block) {
	
	int overLapCount = 0;
	int i = 0;

	for(i = 0;i < gameState->blockList.count;i++) {
		Block *tmpBlock;
		DL_getAt(&gameState->blockList,i,&tmpBlock);

		if (twoBlockAreOverlapping(block,tmpBlock)){
			overLapCount++;
		}
	}

	for(i = 0;i < gameState->envBlockList.count;i++) {
		Block *tmpBlock;
		DL_getAt(&gameState->envBlockList,i,&tmpBlock);

		if (twoBlockAreOverlapping(block,tmpBlock)){
			overLapCount++;
		}
	}

	if (overLapCount >=2) {
		return true;
	}
	return false;
}

static int computedRelXOffset(Uint32 i) {
	return i * G_GameConfig.blockSize;
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

void rotateShape(GameState *gameState) {

	fprintf(stderr, "Inside Rotation \n");

	int translationVector[2];
	Point blockAPoint, blockBPoint, blockCPoint, blockDPoint;

	translationVector[0] = 0 - gameState->tetrisBlk.blockC->x;
	translationVector[1] = 0 - gameState->tetrisBlk.blockC->y;

	// save Old coordonates
	blockAPoint.x = gameState->tetrisBlk.blockA->x;
	blockAPoint.y = gameState->tetrisBlk.blockA->y;

	blockBPoint.x = gameState->tetrisBlk.blockB->x;
	blockBPoint.y = gameState->tetrisBlk.blockB->y;

	blockCPoint.x = gameState->tetrisBlk.blockC->x;
	blockCPoint.y = gameState->tetrisBlk.blockC->y;

	blockDPoint.x = gameState->tetrisBlk.blockD->x;
	blockDPoint.y = gameState->tetrisBlk.blockD->y;

	// translate blocks to origin
	fprintf(stderr, "Inside Rotation %d \n", translationVector[0]);
	fprintf(stderr, "Inside Rotation %d \n", translationVector[1]);

	gameState->tetrisBlk.blockA->x += translationVector[0];
	gameState->tetrisBlk.blockA->y += translationVector[1];

	gameState->tetrisBlk.blockB->x += translationVector[0];
	gameState->tetrisBlk.blockB->y += translationVector[1];

	gameState->tetrisBlk.blockC->x += translationVector[0];
	gameState->tetrisBlk.blockC->y += translationVector[1];

	gameState->tetrisBlk.blockD->x += translationVector[0];
	gameState->tetrisBlk.blockD->y += translationVector[1];

	// rotate
	int oldAY = gameState->tetrisBlk.blockA->y;
	gameState->tetrisBlk.blockA->y = gameState->tetrisBlk.blockA->x * -1;
	gameState->tetrisBlk.blockA->x = oldAY;

	int oldBY = gameState->tetrisBlk.blockB->y;
	gameState->tetrisBlk.blockB->y = gameState->tetrisBlk.blockB->x * -1;
	gameState->tetrisBlk.blockB->x = oldBY;

	int oldCY = gameState->tetrisBlk.blockC->y;
	gameState->tetrisBlk.blockC->y = gameState->tetrisBlk.blockC->x * -1;
	gameState->tetrisBlk.blockC->x = oldCY;

	int oldDY = gameState->tetrisBlk.blockD->y;
	gameState->tetrisBlk.blockD->y = gameState->tetrisBlk.blockD->x * -1;
	gameState->tetrisBlk.blockD->x = oldDY;
	
	// translate back to old coordonates
	gameState->tetrisBlk.blockA->x -= translationVector[0];
	gameState->tetrisBlk.blockA->y -= translationVector[1];

	gameState->tetrisBlk.blockB->x -= translationVector[0];
	gameState->tetrisBlk.blockB->y -= translationVector[1];

	gameState->tetrisBlk.blockC->x -= translationVector[0];
	gameState->tetrisBlk.blockC->y -= translationVector[1];

	gameState->tetrisBlk.blockD->x -= translationVector[0];
	gameState->tetrisBlk.blockD->y -= translationVector[1];

	// colision?
	if (thereIsColision(gameState,gameState->tetrisBlk.blockA) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockB) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockC) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockD)) {

		gameState->tetrisBlk.blockA->x = blockAPoint.x;
		gameState->tetrisBlk.blockB->x = blockBPoint.x;
		gameState->tetrisBlk.blockC->x = blockCPoint.x;
		gameState->tetrisBlk.blockD->x = blockDPoint.x;

		gameState->tetrisBlk.blockA->y = blockAPoint.y;
		gameState->tetrisBlk.blockB->y = blockBPoint.y;
		gameState->tetrisBlk.blockC->y = blockCPoint.y;
		gameState->tetrisBlk.blockD->y = blockDPoint.y;
	}
	// Undo or continue
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

	int OldXArray[4];
	int OldYArray[4];

	OldXArray[0] = gameState->tetrisBlk.blockA->x;
	OldXArray[1] = gameState->tetrisBlk.blockB->x;
	OldXArray[2] = gameState->tetrisBlk.blockC->x;
	OldXArray[3] = gameState->tetrisBlk.blockD->x;

	OldYArray[0] = gameState->tetrisBlk.blockA->y;
	OldYArray[1] = gameState->tetrisBlk.blockB->y;
	OldYArray[2] = gameState->tetrisBlk.blockC->y;
	OldYArray[3] = gameState->tetrisBlk.blockD->y;

	switch (direction) {
		case left:
			gameState->tetrisBlk.blockA->x += computedRelXOffset(-1);
			gameState->tetrisBlk.blockB->x += computedRelXOffset(-1);
			gameState->tetrisBlk.blockC->x += computedRelXOffset(-1);
			gameState->tetrisBlk.blockD->x += computedRelXOffset(-1);
			break;
		case right:
			gameState->tetrisBlk.blockA->x += computedRelXOffset(1);
			gameState->tetrisBlk.blockB->x += computedRelXOffset(1);
			gameState->tetrisBlk.blockC->x += computedRelXOffset(1);
			gameState->tetrisBlk.blockD->x += computedRelXOffset(1);
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

	if (thereIsColision(gameState,gameState->tetrisBlk.blockA) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockB) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockC) ||
		thereIsColision(gameState,gameState->tetrisBlk.blockD)) {

		// a colision was detected, reverse to old coordinates
		gameState->tetrisBlk.blockA->x = OldXArray[0];
		gameState->tetrisBlk.blockB->x = OldXArray[1];
		gameState->tetrisBlk.blockC->x = OldXArray[2];
		gameState->tetrisBlk.blockD->x = OldXArray[3];

		gameState->tetrisBlk.blockA->y = OldYArray[0];
		gameState->tetrisBlk.blockB->y = OldYArray[1];
		gameState->tetrisBlk.blockC->y = OldYArray[2];
		gameState->tetrisBlk.blockD->y = OldYArray[3];

		return false;
	}

	return true;
}

void dropShape(GameState *gameState) {
	return ;
}
