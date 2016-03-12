#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#-----------------------------------------------------------------------------
# aliases
#-----------------------------------------------------------------------------
alias cp='cp -v'
alias rm='rm -v'
alias scp='scp -v'
alias pf='cd ~/plainfingers'
alias devl='cd ~/devl'
alias notes='cd ~/Dropbox/plainfingers/notes'
alias music='cd ~/Music/plainfingers'
alias pilgrim='cd ~/Music/plainfingers/pilgrim'
alias mybin='cd ~/bin'
alias lrt='ls -lart'
alias lsc='ls | wc -l'
alias ...='cd ../..'
alias v='vagrant'
alias nx='ssh cag@nx.adfitech.com'
alias at='adf-tunnel'
alias wf='cd ~/devl/wf'
alias orange='cd ~/devl/orange_intel'
alias ta='tree -a'

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

#export AZURE_STORAGE_ACCOUNT="dworangeintel"

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export PATH=$HOME/.rbenv/bin:$PATH
#eval "$(rbenv init -)"
#echo 'eval "$(rbenv init -)"'
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
