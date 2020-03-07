#!/usr/bin/env bash

#clean file
rm main.o RoadRecovery-1.1.0.dll a.exe

#build dll file
i686-w64-mingw32-g++ -c main.cpp
#with compilation option -lws2_32 to use winsock
i686-w64-mingw32-g++ -shared -o RoadRecovery-1.1.0.dll main.o -lws2_32 -lmswsock -ladvApi32
