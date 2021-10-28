all:
	test -d bin || mkdir bin
	make -C src
	cp src/cblast bin
.PHONY: doc
doc:
	make -C doc
clean:
	make clean -C src
test:
	make test -C src
