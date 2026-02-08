#!/bin/bash

alias cls=clear
alias redis-cli="docker run --rm -it --network=host redis redis-cli"
alias open=xdg-open
alias subl="flatpak run com.sublimetext.three"
alias _dev="cd $_DEV"
alias _d="cd $_D"
alias tmp-docker="docker run --rm -it --entrypoint bash ubuntu:24.04"
alias emul25="emulator -avd 4.5_1080_xxhdpi_API_25"
alias fedorabtw=neofetch
alias archbtw=neofetch
alias signapk=/home/ruslan/signapk.sh
alias jadx="flatpak run com.github.skylot.jadx"
alias dotfiles='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
alias gi='touch .gitignore'
alias gin='gi && nano .gitignore'
alias giidea='echo .idea >> .gitignore'
alias gipycache='echo __pycache__ >> .gitignore'
alias tlid="python -c \"print(hex(__import__('zlib').crc32(' '.join(__import__('sys').argv[1:]).encode('utf8')))[2:])\""
