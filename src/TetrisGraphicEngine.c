#include "TetrisGraphicEngine.h"

static SDL_Renderer *sdlRenderer;

void initializeGraphicEngine(SDL_Renderer *renderer) {
	sdlRenderer = renderer;
}

Block* createBlock(Uint32 x, Uint32 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a) {
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

static void generateWalls(GameState *gameState) {

	assert(gameState != NULL);
	int i;
	int topPadding = 20;
	int leftPadding = 15;
	
	// Generate left wall
	for(i = 0; i < G_GameConfig.numberOfRows; i++) {

		int yPos = topPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(leftPadding, yPos
					     		 , 128
					     		 , 128
					     		 , 128
					     		 , 1);
		
		DL_push(&gameState->blockList, &newBlock);
	}
	
	// Generate right wall
	int rgtWllxPos = leftPadding + (G_GameConfig.numberOfRows - 2) * G_GameConfig.blockSize;

	for(i = 0; i < G_GameConfig.numberOfRows; i++) {

		int yPos = topPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(rgtWllxPos, yPos
					     		 , 128
					     		 , 128
					     		 , 128
					     		 , 1);
		
		DL_push(&gameState->blockList, &newBlock);
	}

	// Generate bottom wall
	int btmWllyPos = topPadding + G_GameConfig.blockSize * (G_GameConfig.numberOfRows + 1); 

	for(i = 0; i < G_GameConfig.numberOfColumns; i++) {

		int xPos = leftPadding + i * G_GameConfig.blockSize;
		Block *newBlock = createBlock(xPos, btmWllyPos
					     	  , 128
					     	  , 128
					     	  , 128
				     		  , 1);
		
		DL_push(&gameState->blockList, &newBlock);
	}


}

static void renderBackground() {
	SDL_SetRenderDrawColor(sdlRenderer, 0, 0, 0, 0);
	SDL_RenderClear(sdlRenderer);
}

static void renderBlock(Block *block) {
	assert(block != NULL);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r
					  , block->color.g
					  , block->color.b
					  , block->color.a);

	SDL_Rect rect;
	rect.x = block->x;
	rect.y = block->y;

	rect.w = G_GameConfig.blockSize;
	rect.h = G_GameConfig.blockSize;
	
	SDL_RenderFillRect(sdlRenderer, &rect);

	SDL_SetRenderDrawColor(sdlRenderer, block->color.r - 40 
					  , block->color.g - 40
					  , block->color.b - 40
					  , block->color.a);

	SDL_RenderDrawRect(sdlRenderer, &rect);
}

void renderGame(GameState *gameState){
	assert(gameState != NULL);

//	fprintf(stderr,"rendering\n");
	
	static bool first = true;
	
	if (first) {	
		Block *newBlock = malloc(sizeof(Block));

		newBlock->x = 100;
		newBlock->y = 0;
		newBlock->color.r = 0;
		newBlock->color.g = 0;
		newBlock->color.b = 255;
		newBlock->color.a = 255;
	
		assert(newBlock != NULL);
		assert(&gameState->blockList != NULL);

		DL_push(&gameState->blockList, &newBlock);

		first = false;
		generateWalls(gameState);
	}

	renderBackground(); 

	int i;

	for(i = 0;i < gameState->blockList.count;i++) {
		Block *block;

		DL_getAt(&gameState->blockList,i,&block);		

		renderBlock(block);
	}

	SDL_RenderPresent(sdlRenderer);

}
