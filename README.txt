Getting started
===============

Pre-requisites
--------------
Install git, gcc, g++, cmake, make
Run:
git submodule init --recursive
git submodule update --recursive

Build clang and LLVM
--------------------
(Before building make sure the submodules are updated.)
$ ./build_clang.sh 

This will check out clang and LLVM if needed. Building will take
a while (a couple of hours on my laptop).

Build strawman
--------------
$ cd strawman
$ make

Test strawman
-------------
$ ./test
