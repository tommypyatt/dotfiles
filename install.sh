mydir="$PWD"
cd

rm .gitconfig
ln -s "$mydir"/.gitconfig

rm .zshrc
ln -s "$mydir"/.zshrc

mkdir -p .atom
cd .atom
rm config.cson
ln -s "$mydir"/.atom/config.cson
rm snippets.cson
ln -s "$mydir"/.atom/snippets.cson

