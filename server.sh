sudo apt install stow tmux fish neovim fzf fdfind

rm ../.bashrc

stow bash fish oh-my-fish vim nvim

# oh-my-fish
curl -L https://get.oh-my.fish | fish

omf update

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
