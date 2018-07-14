#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export TERM=xterm-256color
#source /usr/share/doc/pkgfile/command-not-found.bash
#source /etc/profile.d/autojump.sh

#(wal -r &)
#wal -R
(cat /home/david/.cache/wal/sequences &)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

exec fish
