#ifndef __GAME_CONFIG_H__
#define __GAME_CONFIG_H__

typedef struct {
	Uint32 maxFPS;
	Uint32 maxLevel;
	Uint32 blockDropsPerSec;
	Uint32 numberOfRows;
	Uint32 numberOfColumns;
	Uint32 windowWidth;
	Uint32 windowHeight;
	float levelDifficultyModifier; 
	Uint32 blockSize;
} GameConfiguration;

GameConfiguration G_GameConfiguration;

#endif
