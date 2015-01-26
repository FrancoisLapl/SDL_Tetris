# code comming from http://lazyfoo.net/

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdbool.h>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

SDL_Window* window = NULL;
SDL_Surface* sur face = NULL;

bool initSDL()
{
	bool success = true;
	if(SDL_Init(SDL_INIT_VIDEO)<0){
		printf("SDL Init returned error, abording now. SDL_Error: %s\n", SDL_GetError());
		success = false;
	} else {
		window = SDL_CreateWindow( "Tetris", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
			       		   SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
		if( window == 	NULL ){
			printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
			success = false;
		} else	{							
			surface = SDL_GetWindowSurface( window );
		}
	}
	int 
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
	if(!initSDL()){
		printf("Failed to initialized!\n");
	} else {
		bool quit = false;
		SDL_Event e;

		while(!quit){
			while(SDL_PollEvent(&e) != 0){
				if(e.type == SDL_QUIT){
					quit = true;
				}
			}
			SDL_UpdateWindowSurface(window);
		}
	}

	close();

	return 0;
}
