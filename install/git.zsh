#!/usr/bin/env zsh

: ${CC_DIR:?}

echo "Installing git config..."

if [[ -f ~/.gitconfig ]]; then
  echo "  WARNING: ~/.gitconfig already exists" >&2
  exit 1
fi
ln -s $CC_DIR/git/_gitconfig ~/.gitconfig
r=$?
if [[ $r > 0 ]]; then
  exit $r
fi
echo "...linked at ~/.gitconfig"
