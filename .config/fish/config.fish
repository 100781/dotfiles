# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme agnoster

# Prefer US English and use UTF-8
set -x -U LANG en_US
set -x -U LC_ALL en_US.UTF-8

# Set PATH
set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins bundler brew sublime

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
