#!/usr/bin/env bash

rm libmain.dylib libmain.so main.o

g++ -c -fPIC -o main.o main.cpp
g++ -shared -o libRoadRecovery-1.1.0.so main.o
