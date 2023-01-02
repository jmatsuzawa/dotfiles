# This file is executed on invocation of interactive shell.

# include-guard
if [ -n "${INTERACTIVE_SH_INCLUDED}" ]; then
  return
else
  INTERACTIVE_SH_INCLUDED=1
  export INTERACTIVE_SH_INCLUDED
fi

. "${HOME}/.config/sh/env.sh"

# set EDITOR
if [ -z "${EDITIR}" ]; then
  if which vim > /dev/null 2>&1; then
    EDITOR=vim
    export EDITOR
  elif which vi > /dev/null 2>&1; then
    EDITOR=vi
    export EDITOR
  elif which editor > /dev/null 2>&1; then
    EDITOR=editor
    export EDITOR
  fi
fi

# set LESSOPEN
if which lesspipe > /dev/null 2>&1; then
  LESSOPEN='|lesspipe %s'
elif which lesspipe.sh > /dev/null 2>&1; then
  LESSOPEN='|lesspipe.sh %s'
fi
if [ -n "$LESSOPEN" ]; then
  export LESSOPEN
fi