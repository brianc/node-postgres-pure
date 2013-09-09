# /bin/bash
git submodule update --init
cd pg
git fetch
git checkout origin/master
cd ..
rm -r lib
cp -r pg/lib lib
git add .
git commit -m "Sync with git://github.com/brianc/node-postgres"
echo "Just run npm version --<whatever>"
