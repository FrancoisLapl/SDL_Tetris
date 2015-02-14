.PHONY: clean

CC=gcc
CFLAGS= -c -Wall #-M pourait être utile
LDFLAGS= -framework SDL2
SRCDIR= src/
FILES= main.c DynamicList.c 
SOURCES= $(addprefix $(SRCDIR),$(FILES))
OBJECTS= $(SOURCES:.c=.o)
EXECUTABLENAME= Tetris

all: $(SOURCES) $(EXECUTABLENAME)

$(EXECUTABLENAME): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f $(EXECUTABLENAME) $(OBJECTS) ./$(EXECUTABLENAME).s
outputASM:
	gobjdump -d ./$(EXECUTABLENAME) > $(EXECUTABLENAME).s 
