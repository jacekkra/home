#!/bin/sh

case $(uname -s) in
	Darwin)
		VSCODIUM_CONFIG_DIR=$HOME/Library/Application\ Support/VSCodium/User
		;;
	Linux)
		VSCODIUM_CONFIG_DIR=$HOME/.config/VSCodium/User
		;;
	*)
		echo "Unknown platform"
		exit 1
esac


ln -sf $PWD/vimrc $HOME/.vimrc

NVIM_CONFIG_DIR=$HOME/.config/nvim
mkdir -p "$NVIM_CONFIG_DIR"
ln -sf $PWD/init.vim "$NVIM_CONFIG_DIR"/init.vim

mkdir -p "$VSCODIUM_CONFIG_DIR"
ln -sf $PWD/settings.json "$VSCODIUM_CONFIG_DIR"/settings.json
