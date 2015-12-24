mydir="$PWD"
cd

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

if [ ! -e "bin/n98-magerun.phar" ]
then
    echo "Getting magerun"
    wget http://files.magerun.net/n98-magerun-latest.phar -O bin/n98-magerun.phar
    chmod +x bin/n98-magerun.phar
fi


# Create .atom directory if it doesn't exist, and put config files in there
mkdir -p .atom
cd .atom

echo "Linking atom config and snippets"
rm -f config.cson
ln -s "$mydir"/.atom/config.cson

rm -f snippets.cson
ln -s "$mydir"/.atom/snippets.cson


# Install vim pathogen
echo "Installing pathogen and vim-gitgutter"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
if [ ! -e "vim-gitgutter" ]
then
    git clone git://github.com/airblade/vim-gitgutter.git
fi

