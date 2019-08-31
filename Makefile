
target := hello

src_file = $(shell find ./ -type f -name *.c)

all:
	gcc $(src_file) -o $(target)
	objdump -d $(target) > $(target).dump

clean:
	rm -f $(target) *.dump

run: all
	@./$(target)
