.PHONY: clean clearscreen

CC=gcc
OBJDUMP=
CFLAGS= -c -Wall #-M pourait être utile
LDFLAGS=
SRCDIR= src/
FILES= main.c DynamicList.c test.c GameEngine.c
SOURCES= $(addprefix $(SRCDIR),$(FILES))
OBJECTS= $(SOURCES:.c=.o)
EXE_NAME= Tetris
LONG_EXE_NAME=


UNAME_S := $(shell sh -c 'uname -s 2>/dev/null || echo not')
ifeq ($(UNAME_S),Linux)
	SDL_CFLAGS :=$(shell sdl2-config --cflags)
	SDL_LDFLAGS :=$(shell sdl2-config --libs)
	LDFLAGS +=$(SDL_FLAGS) $(SDL_LDFLAGS)
	LONG_EXE_NAME = $(addsuffix 4Linux, $(EXE_NAME))
	OBJDUMP=objdump
	CMD_CLEA_SCREEN=clear
endif
ifeq ($(UNAME_S),Darwin)
	LDFLAGS += -framework SDL2
	LONG_EXE_NAME = $(addsuffix 4Mac, $(EXE_NAME))
	OBJDUMP= gobjdump
	CMD_CLEA_SCREEN=clear
endif
ifeq (,$(findstring MINGW,$(uname_S)))
	LDFLAGS += -lmingw32 -lSDL2main -lSDL2
	LONG_EXE_NAME = $(addsuffix 4Win, $(EXE_NAME))
	OBJDUMP=objdump
	CMD_CLEA_SCREEN=cls 
endif

all: $(SOURCES) $(LONG_EXE_NAME)

$(LONG_EXE_NAME): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@ 

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(EXE_NAME)* $(OBJECTS) $(EXE_NAME)*.s

outputASM:
	$(OBJDUMP) -d ./$(LONG_EXE_NAME) > $(LONG_EXE_NAME).s 

valgrind:
	valgrind ./$(LONG_EXE_NAME)

clearscreen:
	$(CMD_CLEA_SCREEN)
