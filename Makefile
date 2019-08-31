
src_file_c = $(shell find ./ -type f -name *.c)
src_file_s = $(patsubst %.c,%.c.s,$(src_file_c))

all: $(src_file_s)
	gcc $(src_file_c) -o hello

# compilation
$(src_file_s): $(src_file_c)
	gcc -S $^ -o $@

clean:
	rm -f hello $(src_file_s)

run: all
	@./hello
