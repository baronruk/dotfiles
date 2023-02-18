#!/bin/sh

ln -s "$HOME/dotfiles/.bat" ~/.bat && echo OK || echo Failed

ln -s "$HOME/dotfiles/zsh/.zshrc" ~/.zshrc && echo OK || echo Failed

ln -s "$HOME/dotfiles/alacritty" ~/.config/alacritty && echo OK || echo Failed

ln -s "$HOME/dotfiles/bash/.bashrc" ~/.bashrc && echo OK || echo Failed

ln -s "$HOME/dotfiles/tmux/.tmux.conf" ~/.tmux.conf && echo OK || echo Failed

ln -s "$HOME/dotfiles/starship-prompt/starship.toml" ~/.config/starship.conf && echo OK || echo Failed

ln -s "$HOME/dotfiles/neofetch" ~/.config/neofetch && echo OK || echo Failed

ln -s "$HOME/dotfiles/sublime-text/User" ~/.config/sublime-text/Packages && echo OK || echo Failed

ln -s "$HOME/dotfiles/sublime-merge/User" ~/.config/sublime-merge/Packages && echo OK || echo Failed

ln -s "$HOME/dotfiles/rofi" ~/.config/ && echo OK || echo Failed

ln -s "$HOME/dotfiles/htop" ~/.config/ && echo OK || echo Failed
