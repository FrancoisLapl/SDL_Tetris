.PHONY: clean

CC=gcc
CFLAGS= -c -Wall #-M pourait être utile
LDFLAGS=
SRCDIR= src/
FILES= main.c DynamicList.c test.c GameEngine.c
SOURCES= $(addprefix $(SRCDIR),$(FILES))
OBJECTS= $(SOURCES:.c=.o)
EXECUTABLENAME= Tetris


UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	SDL_CFLAGS :=$(shell sdl2-config --cflags)
	SDL_LDFLAGS :=$(shell sdl2-config --libs)
	LDFLAGS +=$(SDL_FLAGS) $(SDL_LDFLAGS)
endif
ifeq ($(UNAME_S),Darwin)
	LDFLAGS += -framework SDL2
endif


all: $(SOURCES) $(EXECUTABLENAME)

$(EXECUTABLENAME): $(OBJECTS) 
	clear
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@ 

.c.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f $(EXECUTABLENAME) $(OBJECTS) ./$(EXECUTABLENAME).s

outputASM:
	gobjdump -d ./$(EXECUTABLENAME) > $(EXECUTABLENAME).s 

valgrind:
	valgrind ./$(EXECUTABLENAME)
