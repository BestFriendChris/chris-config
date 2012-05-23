#!/usr/bin/env zsh

export RETVAL=0
export CC_DIR=$(cd ${0:h} && pwd -P)

for f in $CC_DIR/install/*.zsh; do
  $f
  r=$?
  if [[ $r > 0 ]]; then
    RETVAL=$r
  fi
done

exit $RETVAL
