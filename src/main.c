// code coming from http://lazyfoo.net/

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdbool.h>
#include "DynamicList.h"
#include "test.h"

const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 600;

SDL_Window* window = NULL;
SDL_Surface* surface = NULL;
SDL_Renderer* renderer = NULL;

bool initSDL()
{
	bool success = true;
	if(SDL_Init(SDL_INIT_VIDEO) < 0){
		printf("SDL Init returned error, abording now. SDL_Error: %s\n", SDL_GetError());
		success = false;
	} else {
		window = SDL_CreateWindow("Tetris", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
			       		   SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
		if(window == NULL){
			printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
			success = false;
		} else	{							
			surface = SDL_GetWindowSurface(window);
			renderer = SDL_CreateSoftwareRenderer(window);
		}
	}
	 
	return success;
}

void close()
{
	SDL_FreeSurface(surface);
	surface = NULL;

	SDL_DestroyWindow(window);
	window = NULL;

	SDL_Quit();
}

int main()
{
	if(false){
		runTests();
		return 0;
	}

	if(!initSDL()){
		printf("Failed to initialized!\n");
	} else {
		runGameLoop(&window, &surface);
	}

	close();

	return 0;

}
