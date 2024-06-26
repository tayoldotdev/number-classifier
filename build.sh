#!/bin/sh

set -xe

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/

RFLAGS=`pkg-config --cflags raylib`
RLIBS="`pkg-config --libs raylib` -ldl -lpthread"

CFLAGS="-O3 -Wall -Wextra -pedantic"
CLIBS="-lm"

clang $CFLAGS $RFLAGS -o ./classifier ./classifier.c $CLIBS $RLIBS
clang -Wall -Wextra -pedantic -o tester ./tester.c 

