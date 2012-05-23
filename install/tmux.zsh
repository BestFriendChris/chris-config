#!/usr/bin/env zsh

: ${CC_DIR:?}

echo "Installing tmux config..."
t=`which tmux`
if [[ $? > 0 || t == 'tmux not found' ]]; then
  echo "  WARNING: tmux is not installed" >&2
  exit 1
fi
if [[ -f ~/.tmux.conf ]]; then
  echo "  WARNING: tmux config already exists" >&2
  exit 1
fi
ln -s $CC_DIR/tmux/_tmux.conf ~/.tmux.conf
r=$?
if [[ $r > 0 ]]; then
  exit $r
fi
echo "...linked at ~/.tmux.conf"
