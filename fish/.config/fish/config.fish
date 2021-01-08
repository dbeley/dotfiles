fish_default_key_bindings
#fish_vi_key_bindings

set -g theme_display_vi no
set -g theme_display_date no
set -g theme_nerd_fonts yes
set -g theme_color_scheme dark

# alias l "ls"
# alias ll "ls -l"
# alias la "ls -la"

alias ls "exa"
alias l "exa"
alias ll "exa -lh"
alias la "exa -lah"

alias emc "emacsclient -nw"
alias enw "emacs -nw"
alias merde "fuck"

# alias cpr "rsync -azvhP --size-only --inplace --stats"
# alias cpr "rsync -avhP --stats --inplace"
alias cpr "rsync -azvhP --stats --inplace --zc=zstd --zl=3"

alias expacsize "expac -H M '%m\t%n' | sort -h"
alias expaclist "expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort -h"

alias mpv720 "mpv --ytdl-format=\"(bestvideo[height<=720]+bestaudio)[ext=webm]/bestvideo[height<=720]+bestaudio/best[height<=720]/bestvideo+bestaudio/best\" "
alias mpv1080 "mpv --ytdl-format=\"(bestvideo[height<=1080]+bestaudio)[ext=webm]/bestvideo[height<=1080]+bestaudio/best[height<=1080]/bestvideo+bestaudio/best\" "

# docker aliases
alias dprune "docker system prune -a"
alias dprunev "docker system prune -a --volumes"

set FZF_DEFAULT_COMMAND "fd --type file --ignore-case --hidden --follow --exclude .git"
set FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set FZF_ALT_C_COMMAND "fd --ignore-case --hidden -t d"
set FZF_TMUX 1

set -x -g PIPENV_VENV_IN_PROJECT 1
set -x -g PIPENV_TIMEOUT 3600

if test -n "$DESKTOP_SESSION"
    set (gnome-keyring-daemon --start | string split "=")
end

# if test -z (pgrep ssh-agent)
#   eval (ssh-agent -c)
#   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
#   set -Ux SSH_AGENT_PID $SSH_AGENT_PID
#   set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
# end
