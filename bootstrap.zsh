#!/bin/zsh

# Ask for sudo upfront.
sudo -v

cd $(dirname $0)
#git pull origin master

function doIt () {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bin/" --exclude "dotfiles.png" --exclude "bootstrap.zsh" --exclude "README.md" --exclude ".lamp" -av --no-perms . ~

  # Handle LAMP config files.
  sudo cp -a .lamp/httpd.conf /etc/apache2/
  sudo cp -a .lamp/httpd-vhosts.conf /etc/apache2/extra/
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
