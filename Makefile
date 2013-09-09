.PHONY : install

install:
	git submodule update --init
	cd pg
	git fetch
	git checkout origin/master
	cd ..
	cp -r pg/lib lib
