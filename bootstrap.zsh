#!/bin/zsh

function doIt () {
  # Ask for sudo upfront.
  sudo -v

  # Change to the dotfiles directory.
  cd $(dirname $0)

  # Copy dotfiles.
  echo "\n--== Copying DOT files ==--"
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bin/" --exclude "dotfiles.png" --exclude "bootstrap.zsh" --exclude "README.md" --exclude ".lamp" -av --no-perms . ~

  # Handle LAMP config files.
  echo "\n--== Copying LAMP files ==--"
  sudo rsync -av --no-perms .lamp/httpd.conf /etc/apache2
  sudo rsync -av --no-perms .lamp/extra/ /etc/apache2/extra
  sudo rsync -av --no-perms .lamp/php.ini /usr/local/etc/php/5.4
  sudo rsync -av --no-perms .lamp/conf.d/ /usr/local/etc/php/5.4/conf.d
  sudo rsync -av --no-perms .lamp/my.cnf /etc/mysql
  sudo rsync -av --no-perms .lamp/hosts /etc

  # Include shell settings
  echo "\n--== Sourcing dotfiles ==--"
  source ~/.zshrc
  source ~/.aliases
  source ~/.exports

  # Include OSX settings
  if [[ "$OSTYPE" =~ ^darwin ]]; then
    source ~/.osx
  fi

  # Restart apache
  echo "\n--== Restarting LAMP ==--"
  mysql.server restart >/dev/null
  echo "Restarted Apache & Mysql"
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
