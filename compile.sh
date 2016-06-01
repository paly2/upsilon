cd src
wget http://www.lua.org/ftp/lua-5.3.2.tar.gz
tar zxf lua-5.3.2.tar.gz
rm lua-5.3.2.tar.gz
mv lua-5.3.2 lua
cd lua
make generic -j`nproc`
make install
cd ../..
echo "Compiling upsilon..."
g++ src/*.cpp -llua -ldl -lSDL2 -lSDL2_image -g -std=c++0x -o upsilon