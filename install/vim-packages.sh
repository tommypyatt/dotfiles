#!/usr/bin/env bash
#
# Install vim plugins as native packages (see :help packages).

set -e

PACK_DIR="$HOME/.vim/pack/plugins/start"
mkdir -p "$PACK_DIR"

install_plugin () {
  local name=$1 url=$2
  if [ -d "$PACK_DIR/$name" ]
  then
    echo "  $name already installed"
  else
    git clone --depth 1 "$url" "$PACK_DIR/$name"
  fi
}

install_plugin vim-colors-solarized https://github.com/altercation/vim-colors-solarized
install_plugin vim-gitgutter https://github.com/airblade/vim-gitgutter
