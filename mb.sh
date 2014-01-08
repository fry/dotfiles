#!/bin/bash

LN="ln -sf"

# emacs
$LN $PWD/src/emacs/.emacs ~/.emacs
$LN $PWD/src/emacs/.emacs.d ~/.emacs.d

# vim
$LN $PWD/src/vim/.vimrc ~/.vimrc
$LN $PWD/src/vim/.vim ~/.vim

$LN $PWD/src/.tmux.conf ~/.tmux.conf

