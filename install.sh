mydir="$PWD"
cd

if [ -e ".gitconfig" ]
then
    rm .gitconfig
fi
ln -s "$mydir"/.gitconfig

if [ -e ".zshrc" ]
then
    rm .zshrc
fi
ln -s "$mydir"/.zshrc

if [ -e ".vimrc" ]
then
    rm .vimrc
fi
ln -s "$mydir"/.vimrc

mkdir -p .atom
cd .atom


if [ -e ".config.cson" ]
then
    rm config.cson
fi
ln -s "$mydir"/.atom/config.cson

if [ -e ".config.cson" ]
then
    rm snippets.cson
fi
ln -s "$mydir"/.atom/snippets.cson

