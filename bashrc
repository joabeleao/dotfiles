# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Path settings
FLAT="$HOME/.var/app"
PATH="$PATH:$HOME/dev:/opt/:/opt/pycharm-community-2023.1.3/lib/:$HOME/.var/:$FLAT"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=500000
HISTFILESIZE=500000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

## improvements to bash ##
alias ls='ls --color -latrF'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias vim='nvim'

export HISTTIMEFORMAT="%d/%m/%y %T "
export editor='neovim'

export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_VARIANT=altgr-intl
export XKB_DEFAULT_OPTIONS=compose:menu,level3:ralt_switch

# terminal default colors and ps1 customization
export TERM=xterm-256color

# simple terminal colors
#export PS1="$(tput bold)$(tput setaf 2)\u$(tput bold)$(tput setaf 1)@\h:$(tput bold)$(tput setaf 4)[\w] $(tput sgr0)"

# :: gruvbox shell prompt ::
# source ~/gruvbox.sh # vanilla
# source ~/gruvbox_powerline.sh # powerline

# :: starship shell prompt ::
eval "$(starship init bash)"
# export STARSHIP_CONFIG=~/.config/starship.toml

# :: oh-my-posh shell prompt
# eval "$(oh-my-posh --init --shell bash --config ~/.config/omp-princess.json)"

# :: tmux ::
# tmux -f ~/.tmux/tmux.conf
# clear
