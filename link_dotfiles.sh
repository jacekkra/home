#!/bin/sh

ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/zshrc $HOME/.zshrc

MPV_CONFIG_DIR=$HOME/.config/mpv
mkdir -p "$MPV_CONFIG_DIR"
ln -sf $PWD/mpv.conf "$MPV_CONFIG_DIR"/mpv.conf

NVIM_CONFIG_DIR=$HOME/.config/nvim
mkdir -p "$NVIM_CONFIG_DIR"
ln -sf $PWD/init.vim "$NVIM_CONFIG_DIR"/init.vim

VSCODIUM_CONFIG_DIR=$HOME/Library/Application\ Support/VSCodium/User
mkdir -p "$VSCODIUM_CONFIG_DIR"
ln -sf $PWD/settings.json "$VSCODIUM_CONFIG_DIR"/settings.json
