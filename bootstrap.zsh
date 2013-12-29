#!/bin/zsh

cd ${HOME}/$(dirname $0)
#git pull origin master

function doIt () {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bin/" --exclude "dotfiles.png" --exclude "bootstrap.zsh" \
		--exclude "README.md" --exclude "LICENSE-GPL.txt" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
}
if [[ "$1" == "-y" ]]; then
	doIt
else
	read -q "REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

source ~/.zshrc

# Include OSX settings
if [[ "$OSTYPE" =~ ^darwin ]]; then
  source ~/.osx
fi