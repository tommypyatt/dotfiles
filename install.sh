#!/bin/bash
read -p "This will replace your config files, are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

# Confirmed, let's do it

# Store my directory for symlinking
mydir="$PWD"
cd
mkdir -p ~/bin

# Create in home directory
echo "Linking gitconfig"
rm -f .gitconfig
ln -s "$mydir"/.gitconfig

echo "Linking zshrc"
rm -f .zshrc
ln -s "$mydir"/.zshrc || [ -L ".vimrc" ]

echo "Linking vimrc"
rm -f .vimrc
ln -s "$mydir"/.vimrc

# Create .atom directory if it doesn't exist, and put config files in there
mkdir -p .atom
cd .atom

echo "Linking atom config and snippets"
rm -f config.cson
ln -s "$mydir"/.atom/config.cson
rm -f snippets.cson
ln -s "$mydir"/.atom/snippets.cson
rm -f styles.less
ln -s "$mydir"/.atom/styles.less

# Install vim pathogen
echo "Installing pathogen and vim-gitgutter"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install gitgutter if it isn't already there
cd ~/.vim/bundle
if [ ! -e "vim-gitgutter" ]
then
    git clone git://github.com/airblade/vim-gitgutter.git
fi

# Install oh my zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install magerun
if [ ! -e "~/bin/n98-magerun.phar" ]
then
    echo "Getting magerun"
    wget http://files.magerun.net/n98-magerun-latest.phar -O ~/bin/n98-magerun.phar
    chmod +x ~/bin/n98-magerun.phar
fi

# End confirmation condition
fi

