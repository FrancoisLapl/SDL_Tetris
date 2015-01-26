CC=gcc-4.8
CFLAGS= -c -Wall
LDFLAGS= -framework SDL2
SOURCES=main.c tetris.c 
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLENAME=Tetris

all: $(SOURCES) $(EXECUTABLENAME)

$(EXECUTABLENAME): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f $(EXECUTABLENAME) $(OBJECTS) 

