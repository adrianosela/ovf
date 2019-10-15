# program name
NAME:=$(shell basename `git rev-parse --show-toplevel`)

# compiler and flags
CC=gcc

# .h file dir
IDIR=include

# include pthread library
LIBS=-lpthread

# find srcs
UTILS=$(shell find utils -type f -iname '*.c')

CFLAGS=-I$(IDIR) $(LIBS)

all: build

clean:
	rm -rf $(NAME)

build: main.c $(UTILS)
	$(CC) -o $(NAME) main.c $(UTILS) $(CFLAGS)

dockerbuild:
	docker build -t cstar-builder .
	docker run -i -v $(shell pwd):/cstar cstar-builder
