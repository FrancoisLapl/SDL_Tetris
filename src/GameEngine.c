#include "GameEngine.h"

void runGameLoop(SDL_Window* window,SDL_Renderer* renderer)
{
	fprintf(stderr, " Error(s): %s\n", SDL_GetError());

	bool quit = false;
	SDL_Event e;
	SDL_Rect playerPos;
	playerPos.h = 40;
	playerPos.w = 40;
	playerPos.x = 0;
	playerPos.y = 0;


	SDL_SetRenderDrawColor(renderer, 125, 125, 125, 125 );
	SDL_RenderClear(renderer);			
	SDL_RenderPresent(renderer);
	SDL_Delay(500);

	while(!quit){
		SDL_PollEvent(&e);
	
		if(e.type == SDL_QUIT){
			quit = true;
		}   
		
		SDL_SetRenderDrawColor(renderer, 125, 125, 125, 125);
		SDL_RenderClear(renderer);	
		
		SDL_SetRenderDrawColor(renderer, 0, 0, 255, 255 );
        	SDL_RenderFillRect(renderer,&playerPos );
	
		SDL_RenderPresent(renderer);	
		SDL_Delay(16);
		playerPos.y+=50;
		playerPos.x+=50;

		if( playerPos.y >= 600){
			playerPos.x = 0;
			playerPos.y = 0;
		}
	}   
	fprintf(stderr, "Error(s): %s\n", SDL_GetError());
}
