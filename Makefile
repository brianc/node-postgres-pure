.PHONY : publish

install:
	git submodule update --init
	cp -r pg/lib lib
	rm -rf pg
