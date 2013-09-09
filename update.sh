# /bin/bash
git submodule update --init
cd pg
git fetch
git checkout origin/master
cd ..
rm -r lib
cp -r pg/lib lib
