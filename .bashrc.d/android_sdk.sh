#!/bin/bash

export ANDROID_EMULATOR_WAIT_TIME_BEFORE_KILL=30
export ANDROID_HOME=/mnt/B0A0B30BA0B2D6D6/sdk/android-linux

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

export NDK=$ANDROID_HOME/ndk/21.4.7075529
export NDK_R18B=$ANDROID_HOME/ndk/18.1.5063045

#export ANDROID_NDK=$NDK
