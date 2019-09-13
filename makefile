#target .exe
myexe: main.o myfunc.o
		g++ $(CFLAGS) -o myexe main.o myfunc.o

#(CFLAGS) includes any default system arguments
main.o: main.cpp myfunc.h
	  g++ $(CFLAGS) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	  g++ $(CFLAGS) -c myfunc.cpp

#'make clean' will remove all .o files
clean:
	rm -f *.o myexe
