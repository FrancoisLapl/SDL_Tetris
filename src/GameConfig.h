#ifndef __GAME_CONFIG_H__
#define __GAME_CONFIG_H__

typedef struct {
	Uint32 targetFps;
	Uint32 maxLevel;
	Uint32 blockDropDelayMs;
	Uint32 numberOfRows;
	Uint32 numberOfColumns;
	Uint32 windowWidth;
	Uint32 windowHeight;
	float levelDifficultyModifier; 
	Uint32 blockSize;
	Uint32 gridLeftPadding;
	Uint32 gridTopPadding;
} GameConfiguration;

GameConfiguration G_GameConfig;

#endif
