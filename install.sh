mydir="$PWD"
cd

rm .gitconfig
ln -s "$mydir"/.gitconfig

rm .zshrc
ln -s "$mydir"/.zshrc

