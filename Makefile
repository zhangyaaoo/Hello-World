
src_file_c = $(shell find ./ -type f -name *.c)
src_file_p = $(patsubst %.c,%.c.pre,$(src_file_c))
src_file_s = $(patsubst %.c,%.c.s,$(src_file_c))

all: $(src_file_p) $(src_file_s)
	gcc $(src_file_c) -o hello

# preprocessing
$(src_file_p): $(src_file_c)
	gcc -E $^ -o $@

# compilation
$(src_file_s): $(src_file_c)
	gcc -S $^ -o $@

clean:
	rm -f hello $(src_file_p) $(src_file_s)

run: all
	@./hello
