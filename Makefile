.PHONY : install

install:
	git submodule update --init
	cp -r pg/lib lib
