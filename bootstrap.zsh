#!/bin/zsh

# Ask for sudo upfront.
sudo -v

cd $(dirname $0)
#git pull origin master

function doIt () {
  echo "\n--== Copying DOT files ==--"
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bin/" --exclude "dotfiles.png" --exclude "bootstrap.zsh" --exclude "README.md" --exclude ".lamp" -av --no-perms . ~

  # Handle LAMP config files.
  echo "\n--== Copying LAMP files ==--"
  sudo cp -av .lamp/httpd.conf /etc/apache2/
  sudo cp -av .lamp/extra /etc/apache2/
  sudo cp -av .lamp/php.ini /usr/local/etc/php/5.4/
  sudo cp -av .lamp/conf.d /usr/local/etc/php/5.4/
  sudo cp -av .lamp/my.cnf /etc/mysql/
  sudo cp -av .lamp/hosts /etc/
  echo "\n"

  source ~/.zshrc

  # Restart apache
  mysql.server restart >/dev/null
  echo "Restarted Apache & Mysql"

  # Include OSX settings
  if [[ "$OSTYPE" =~ ^darwin ]]; then
    source ~/.osx
  fi
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
