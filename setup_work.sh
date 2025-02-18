#!/usr/bin/env zsh

echo ">>>>>Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" </dev/null ## /dev/null skips pressing enter for the installation
brew bundle --file=~/.dotfiles/homebrew/Brewfile-work

stow ~/.dotfiles/zsh
stow ~/.dotfiles/vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone https://github.com/vim-airline/vim-airline.git
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive.git
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-surround.git
cd ~/.vim/bundle && git clone https://github.com/dense-analysis/ale.git

dra download jordanbaird/Ice -s Ice.zip
unzip Ice.zip -d ~/Downloads
rm Ice.zip
