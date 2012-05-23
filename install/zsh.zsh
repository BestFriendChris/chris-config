#!/usr/bin/env zsh

: ${CC_DIR:?}

echo "Installing zsh config..."
if [[ -f ~/.zshenv ]]; then
  echo "  WARNING: ~/.zshenv already exists" >&2
  exit 1
fi
$CC_DIR/zsh/install.sh
r=$?
if [[ $r > 0 ]]; then
  exit $r
fi
echo "...linked at ~/.zshenv"
