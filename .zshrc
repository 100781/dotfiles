# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set default user.
DEFAULT_USER=bleen

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github bundler)

source $ZSH/oh-my-zsh.sh

# Include aliases - This does not get called when running "source .zshrc"
source ~/.aliases

# Include exports - This does not get called when running "source .zshrc"
source ~/.exports

# Needed for git-completion. See http://goo.gl/SZkRo3
fpath=(~/.zsh $fpath)

# Make sure rbenv is handling ruby.
eval "$(rbenv init - --no-rehash)"

