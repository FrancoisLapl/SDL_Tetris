#include "GameEngine.h"

void runGameLoop(SDL_Window* window,SDL_Renderer* renderer)
{

	bool quit = false;
	SDL_Event e;
	
	while(!quit){
		while(SDL_PollEvent(&e) != 0){ 
			if(e.type == SDL_QUIT){
				quit = true;
		       	}   
		}   
	}   
}
