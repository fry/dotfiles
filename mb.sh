#!/bin/bash

LN="ln -sf"

# emacs
$LN $PWD/src/emacs/.emacs ~/.emacs
$LN $PWD/src/emacs/.emacs.d ~/.emacs.d

# vim
$LN $PWD/src/vim/.vimrc ~/.vimrc
$LN $PWD/src/vim/.vim ~/.vim

# tmu
$LN $PWD/src/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm ; true

# zsh
$LN $PWD/src/zsh/zshrc ~/.zshrc
$LN $PWD/src/zsh/inputrc ~/.inputrc

# vscode
$LN $PWD/src/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
$LN $PWD/src/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets

# kitty
mkdir -p ~/.config/kitty
$LN $PWD/src/kitty/kitty.conf ~/.config/kitty/kitty.conf

# git
$LN $PWD/src/git/.gitconfig ~/.gitconfig
