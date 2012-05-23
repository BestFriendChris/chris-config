#!/usr/bin/env zsh

: ${CC_DIR:?}

echo "Installing vim config..."
if [[ -f ~/.vimrc ]]; then
  echo "  WARNING: ~/.vimrc already exists" >&2
  exit 1
fi
ln -s $CC_DIR/vim/_vimrc ~/.vimrc
r=$?
if [[ $r > 0 ]]; then
  exit $r
fi
echo "...linked at ~/.vimrc"

echo "Installing gvim config..."
if [[ -f ~/.vimrc ]]; then
  echo "  WARNING: ~/.gvimrc already exists" >&2
  exit 1
fi
ln -s $CC_DIR/vim/macvim-specific/_gvimrc ~/.gvimrc
r=$?
if [[ $r > 0 ]]; then
  exit $r
fi
echo "...linked at ~/.gvimrc
