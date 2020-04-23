#!/usr/bin/env bash

git submodule init
git submodule update

echo "Creating envsettings directory..."
mkdir -p ~/.envsettings

echo "Installing vimrc and vim plugins..."
cp vim/vimrc ~/.envsettings/.vimrc
cp -rf vim/vim ~/.envsettings/.vim

rm -rf ~/.vim
rm -rf ~/.vimrc
ln -s $HOME/.envsettings/.vimrc ~/.vimrc
ln -s $HOME/.envsettings/.vim ~/.vim

echo "Installing dircolors..."
cp terminal/dircolors-solarized/dircolors* ~/.envsettings/
echo "" >> ~/.cshrc
echo "eval \`dircolors ~/.envsettings/dircolors.ansi-dark\`" >> ~/.cshrc

echo "Installing GNOME terminal color scheme..."
# ./terminal/gnome-terminal-colors-solarized/install.sh
