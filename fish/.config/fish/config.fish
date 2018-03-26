source /etc/profile.d/autojump.fish

#fish_vi_key_bindings

set -g theme_display_vi no
set -g theme_display_date no
set -g theme_nerd_fonts yes
set -g theme_color_scheme dark

#alias l "ls"
#alias ll "ls -l"
#alias la "ls -la"

alias ls "exa"
alias l "exa"
alias ll "exa -lh"
alias la "exa -lah"

alias emc "emacsclient -nw"

