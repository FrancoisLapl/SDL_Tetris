// code inspired by http://lazyfoo.net/

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdbool.h>
#include "DynamicList.h"
#include "GameEngine.h"
#include "test.h"
#include "GameConfig.h"
#include <time.h>

SDL_Window* window = NULL;
SDL_Renderer* renderer = NULL;

static void initialiseGameConfigs(){
	G_GameConfig.windowWidth = 500;
	G_GameConfig.windowHeight = 600;
	G_GameConfig.targetFps = 60;
	G_GameConfig.blockDropDelayMs = 600;
	G_GameConfig.numberOfRows = 21;
	G_GameConfig.numberOfColumns = 12;
	G_GameConfig.levelDifficultyModifier = 0.1;
	G_GameConfig.blockSize = 26;
	G_GameConfig.gridLeftPadding = 15;
	G_GameConfig.gridTopPadding = 20;
}

static bool initSDL()
{
	if (SDL_Init(SDL_INIT_EVERYTHING) < 0){
		fprintf(stderr, "SDL Init returned error. Stopping the Tetris. Error(s): %s\n", SDL_GetError());
		return false;
	} 

	window = SDL_CreateWindow("Tetris", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
			       		   G_GameConfig.windowWidth,G_GameConfig.windowHeight, SDL_WINDOW_SHOWN);
	if (window == NULL){
		fprintf(stderr, "\nUnable to Create the main window. Stopping the Tetris. Error(s):  %s\n", SDL_GetError());
		return false;
	}

	renderer = SDL_CreateRenderer(window,-1,SDL_RENDERER_SOFTWARE);
			
	if (renderer == NULL){
		fprintf(stderr, "\nUnable to create the main renderer. Stopping the Tetris. Error(s):  %s\n", SDL_GetError());
		return false;
	}
	
	SDL_RenderSetLogicalSize(renderer, G_GameConfig.windowWidth , G_GameConfig.windowHeight);
	return true;
}

static void closeSDL()
{
	SDL_DestroyRenderer(renderer);
	renderer = NULL;

	SDL_DestroyWindow(window);
	window = NULL;

	SDL_Quit();
}

int main()
{
	if (false){
		runTests();
		return 0;
	}
	
	//initialise random seed for blocks
	srand(time(NULL));
	initialiseGameConfigs();
	
	if (!initSDL()){
		fprintf(stderr, "\nUnable to initialize SDL abording tetris :(\n");
	} else {
		runGameLoop(window, renderer);
	}

	closeSDL();

	return 0;
}
