# program name
NAME:=$(shell basename `git rev-parse --show-toplevel`)

# compiler and flags
CC=gcc

all: build

clean:
	rm -rf $(NAME)

build: main.c $(UTILS)
	$(CC) -o $(NAME) -w main.c
