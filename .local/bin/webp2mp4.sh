#!/bin/bash

set -Eeuo pipefail

# https://stackoverflow.com/questions/47050589/create-url-friendly-slug-with-pure-bash
slugify () {
    echo "$1" | iconv -c -t ascii//TRANSLIT | sed -E 's/[~^]+//g' | sed -E 's/[^a-zA-Z0-9]+/-/g' | sed -E 's/^-+|-+$//g' | tr A-Z a-z
}

w2v_tmp=$( mktemp -dt $(slugify "pats.webp")".XXXXXXXX" )
mkdir -p "$w2v_tmp"
echo "Using temp directory $w2v_tmp ..."

frames=$( webpmux -info "$1" | grep 'Number of frames:' | cut -d':' -f2 | xargs )
echo "WEBP has $frames frames"

webp_dump -folder "$w2v_tmp" -prefix frame_ "$1"
ffmpeg -hide_banner -framerate 30 -i "$w2v_tmp"/frame_%06d.png -c:v vp9 -r 30 "$2"
