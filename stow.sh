#!/bin/bash

find . -name .DS_Store -exec rm -v {} \;

stow -v -R -t ~ dotfiles
