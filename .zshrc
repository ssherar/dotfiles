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

proxyon() {
  export http_proxy=http://iss-emea-pitc-londonz.proxy.corporate.ge.com:80
  export https_proxy=$http_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy

  export no_proxy="localhost,.ge.com"
}

proxyoff() {
  unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY no_proxy
}

ping -c 1 google.com 2>&1 > /dev/null || proxyon
alias ssh="assh wrapper ssh"

alias cagol='source /usr/local/bin/cago.sh list'
alias cagor='source /usr/local/bin/cago.sh refresh'
alias cagos='source /usr/local/bin/cago.sh switch'
alias cagou='source /usr/local/bin/cago.sh unset'

export AWS_CA_BUNDLE=$HOME/.certs/bundle.pem
