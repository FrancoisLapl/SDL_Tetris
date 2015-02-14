// code coming from http://lazyfoo.net/

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdbool.h>
#include "DynamicList.h"

const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 600;

SDL_Window* window = NULL;
SDL_Surface* surface = NULL;

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
	DynamicList list;	
	initialize(&list,sizeof(int),NULL,10);	
	int idx;
	
	for(idx = 0; idx < 30;idx++){
		
		push(&list,&idx);
	}

	int b = 1111123132;
	int c = 3214343333;
	insertAt(&list,22,&b);
	insertAt(&list,22,&c);

	printf("le count est %d, Le elements pointer est %d,le objectSize est %d,le length est %d \n",list.count
												     ,(int)list.elements
												     ,list.objectSize
												     ,list.length);
	int i;
	for( i = -1; i <= 31; i++){
		int temp = 0;
		getAt(&list,i,&temp);
		printf("int at %d = %d \n",i ,temp);	
	}
	deleteList(&list,NULL);	
	
	return 0;

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
