#include "TetrisGraphicEngine.h"

static SDL_Rect bgRect;
static SDL_Renderer *sdlRenderer;

void initialiseGraphicEngine(SDL_Renderer *renderer){
	sdlRenderer = renderer;

	bgRect.x = 0;
	bgRect.y = 0;
	bgRect.w = G_GameConfiguration.windowWidth;
	bgRect.h = G_GameConfiguration.windowHeight;
}

void renderGame(GameState *gameState){
		
	SDL_SetRenderDrawColor(sdlRenderer, 255, 255, 255, 0);
	SDL_RenderDrawRect(sdlRenderer, &bgRect);	
	
	int i;
	fprintf(stderr, "in the loop \n");

	for(i = 0;i < gameState->blockList.count;i++) {
		Block block;
		fprintf(stderr, "in the loop");
		DL_getAt(&gameState->blockList,i,&block);		
	}

}
