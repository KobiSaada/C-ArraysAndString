FLAGS= -Wall -g 
CFLAGS= -Werror
CC= gcc
all: isort txtfind
isort: mains.o isort.o
	$(CC) $(FLAGS) -o isort mains.o isort.o
txtfind: maint.o txtfind.o
	$(CC) $(FLAGS) -o txtfind maint.o txtfind.o
mains.o: mains.c isort.h
	$(CC) $(FLAGS) -c mains.c
isort.o: isort.c isort.h
	$(CC) $(FLAGS) -c isort.c
maint.o: maint.c txtfind.h
	$(CC) $(FLAGS) -c maint.c
txtfind.o: txtfind.c txtfind.h
	$(CC) $(FLAGS) -c txtfind.c
clean:
	rm isort txtfind *.o

.PHONY: clean all isort txtfind
