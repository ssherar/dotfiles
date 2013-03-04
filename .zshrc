# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

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
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin/
PG_PATH="/usr/local/var/postgres/"
NGINX_CONF="/usr/local/etc/nginx/nginx.conf"
PHP_PORT=9000
alias pg_start="pg_ctl -h localhost -D $PG_PATH start"
alias pg_stop="pg_ctl -D $PG_PATH stop";
alias nginx_start="nginx -c $NGINX_CONF"
alias nginx_stop="nginx -s stop"
alias php_start="php_cgi -b $PHP_PORT"

POWERLINE_RIGHT_A="date replacement"
POWERLINE_RIGHT_B="time replacement"

POWERLINE_NO_BLANK_LINE="true"

POWERLINE_FULL_CURRENT_PATH="true"

POWERLINE_SHOW_GIT_ON_RIGHT="true"

POWERLINE_DETECT_SSH="true"

unsetopt correct_all

alias gvim="mvim"
