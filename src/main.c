// code inspired by http://lazyfoo.net/

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdbool.h>
#include "DynamicList.h"
#include "GameEngine.h"
#include "test.h"

const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 600;

SDL_Window* window = NULL;
SDL_Renderer* renderer = NULL;

bool initSDL()
{
	if (SDL_Init(SDL_INIT_VIDEO) < 0){
		fprintf(stderr, "SDL Init returned error. Stopping the Tetris. Error(s): %s\n", SDL_GetError());
		return false;
	} 

	window = SDL_CreateWindow("Tetris", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
			       		   SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (window == NULL){
		fprintf(stderr, "\nUnable to Create the main window. Stopping the Tetris. Error(s):  %s\n", SDL_GetError());
		return false;
	}

	renderer = SDL_CreateRenderer(window,-1,0);
			
	if (renderer == NULL){
		fprintf(stderr, "\nUnable to create the main renderer. Stopping the Tetris. Error(s):  %s\n", SDL_GetError());
		return false;
	}
	 
	return true;
}

void closeSDL()
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

	if (!initSDL()){
		fprintf(stderr, "\nUnable to initialize SDL abording tetris :(\n");
	} else {
		runGameLoop(window, renderer);
	}

	closeSDL();

	return 0;
}
