# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Use vim style commandline editing
bindkey -v
export KEYTIMEOUT=1
# see http://dougblack.io/words/zsh-vi-mode.html
# see https://github.com/hchbaw/opp.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="kennethreitz" # notesproj :: (master) »
# ZSH_THEME="kolo"
ZSH_THEME="kphoen"   # best
# ZSH_THEME="mikeh"
#ZSH_THEME="sorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/etc:/usr/etc:/usr/X11R6/bin:/home/dohlemacher/bin:.

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev/dj
source /usr/local/bin/virtualenvwrapper.sh

export JAVA_HOME=$HOME/bin/jdk1.7.0_51/bin

alias tun='ssh -c arcfour,blowfish-cbc -X dohlemacher@nytemare.dyndns.org'
alias lsd='ls -t -r --color=tty'
alias lsl='ls -l --color=tty'
alias rmi='rm -i'

alias synccharon="rsync -av --progress --delete --delete-excluded --exclude /home/dohlemacher/Downloads /home/dohlemacher /media/dohlemacher/529C12DA9C12B885/charon/"
