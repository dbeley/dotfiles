sudo apt install stow tmux fish neovim fzf fdfind
sudo apt install nfs-common

rm ../.bashrc

stow bash fish oh-my-fish vim nvim exuberant-ctags fd-find

# oh-my-fish
curl -L https://get.oh-my.fish | fish

omf update

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
