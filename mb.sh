#!/bin/bash

LN="ln -sf"

# emacs
$LN $PWD/src/emacs/.emacs ~/.emacs
$LN $PWD/src/emacs/.emacs.d ~/.emacs.d

# vim
$LN $PWD/src/vim/.vimrc ~/.vimrc
$LN $PWD/src/vim/.vim ~/.vim

# tmu
$LN $PWD/src/.tmux.conf ~/.tmux.conf

# zsh
$LN $PWD/src/zsh/.inputrc ~/.inputrc

# vscode
$LN $PWD/src/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
$LN $PWD/src/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets

