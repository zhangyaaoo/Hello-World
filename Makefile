#
# I don't know what to comment
#

src_file = $(shell find ./ -type f -name *.c)

all:
	gcc $(src_file) 

clean:
	rm a.out -f
