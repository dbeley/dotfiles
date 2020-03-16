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
alias cpr "rsync -avhP --stats --inplace"

set FZF_DEFAULT_COMMAND "fd --type file --ignore-case --hidden --follow --exclude .git"
set FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set FZF_ALT_C_COMMAND "fd --ignore-case --hidden -t d"
set FZF_TMUX 1

set -x -g PIPENV_VENV_IN_PROJECT 1
