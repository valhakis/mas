cc = gcc

libs += -lform
libs += -lncurses

all: app

app: src/main.c
	$(cc) -o $@ $^ $(libs)
