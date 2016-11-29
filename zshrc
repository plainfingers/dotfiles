#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  #source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

# Customize to your needs...

#-----------------------------------------------------------------------------
# aliases
#-----------------------------------------------------------------------------
alias cp='cp -v'
alias rm='rm -v'
alias scp='scp -v'
alias lrt='ls -lart'
alias lsc='ls | wc -l'
alias v='vagrant'
alias nx='ssh cag@nx.adfitech.com'
alias at='adf-tunnel'

alias ...='cd ../..'
alias devl='cd ~/devl'
alias notes='cd ~/notes'
alias leg='cd ~/devl/legacy'
alias wf='cd ~/devl/wf'

#taskwarrior related
alias t='task'
alias tc='t c; t wk'

function tadd() {
  task add project:$@
}

function tt() {
  task project:$@
}

#-----------------------------------------------------------------------------
# binding
# NOTE: with zprezto, you just add the module
#   'history-substring-search'\
#   to the .zpreztorc file
#-----------------------------------------------------------------------------
# bind k and j for VI mode
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

# bind UP and DOWN arrow keys
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
