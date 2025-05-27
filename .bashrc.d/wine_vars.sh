#!/bin/bash

export WINEARCH=win64
export WINEPREFIX=/home/ruslan/tmp/wine64
export WINEDLLOVERRIDES="explorer.exe,services.exe=d"
export WINEPATH="/usr/x86_64-w64-mingw32/sys-root/mingw/bin"
export WINEDEBUG=-all
