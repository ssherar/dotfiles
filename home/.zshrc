if ! [[ ( -d $HOME/.bin && -f $HOME/.bin/antigen.zsh ) ]]; then
  echo " [x] antigen not found -- donloading"
  mkdir -p $HOME/.bin
  curl -L https://raw.github.com/zsh-users/antigen/master/bin/antigen.zsh > $HOME/.bin/antigen.zsh
fi

source ~/.bin/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle pip
antigen bundle git-extras

antigen theme agnoster

antigen apply

export DEFAULT_USER="sambuca"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_PYTHON=$(which python3)

export EDITOR=vim

alias zcd="rm -rf ~/.zcompdump && exec zsh"

export PATH=$PATH:/sbin/

source $(which virtualenvwrapper.sh)

setopt HIST_IGNORE_ALL_DUPS

alias ssh="assh wrapper ssh"