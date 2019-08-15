
src_file = $(shell find ./ -type f -name *.c)

all:
	gcc $(src_file) -o hello

clean:
	rm -f hello

run:
	./hello
