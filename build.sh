#!/bin/sh

echo "Building project | making build folder, and going into it..."
rm -rf build &&
mkdir build &&
cd build &&

echo "Running cmake with build type Debug."
cmake -DCMAKE_PREFIX_PATH=$HOME/Qt/5.15.14/gcc_64/ -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug .. &&

echo "====================="
echo "Running make..."
echo "====================="

make &&

echo "====================="
echo "copy compile-commands.json to root folder..."
echo "====================="
cd .. &&
cp build/compile_commands.json .
