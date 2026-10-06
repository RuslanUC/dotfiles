#!/bin/bash

mkjavapkg() {
    local pkg_path=$( echo "$1" | sed 's,\.,/,g' )
    mkdir -p "$pkg_path"
    echo "$pkg_path"
}

mkjavacls() {
    local package=$( echo "$1" | sed 's/\.[^\.]*$//' )
    local pkg_path=$( mkjavapkg "$package" )
    nano "$pkg_path"/$( echo "$1" | sed 's/^.*\.//' ).java
}
