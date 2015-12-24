# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

# User configuration

export PATH="/opt/boxen/phpenv/shims:/opt/boxen/phpenv/bin:/opt/boxen/phpenv/plugins/php-build/bin:bin:/opt/boxen/homebrew/opt/coreutils/libexec/gnubin:/Users/tommypyatt/.composer/vendor/bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin:./node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/node-build/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/opt/boxen/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias mr=magerun
alias mysql="mysql -uroot"
BUILD_DIR=~/builds
SRC_DIR=~/src

alias b=$BUILD_DIR
alias c=$SRC_DIR
alias x=exit

