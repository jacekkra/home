#!/bin/bash

brew bundle
brew autoupdate --delete
brew autoupdate --start 3600 --upgrade

