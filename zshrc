# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# For homebrew on Mac. fixes issue with order of path directories.
# export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

#lampp
alias lampp="sudo /opt/lampp/lampp"

# set dual monitors
dual () {
    echo "xrandr --output VGA-0 --primary --left-of HDMI-0 --output HDMI-0 --auto"
    xrandr --output VGA-0 --primary --left-of HDMI-0 --output HDMI-0 --auto
}

# set single monitor
single () {
    echo "xrandr --output HDMI-0 --off"
    xrandr --output HDMI-0 --off
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# set vi mode
set -o vi




PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
