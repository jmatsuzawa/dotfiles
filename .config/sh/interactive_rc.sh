############################################################
# prevent multiple include (it's needed?)
############################################################
if test -n "$INTERACTIVE_SHRC_INCLUDED"; then
  return
fi
INTERACTIVE_SHRC_INCLUDED=0
export INTERACTIVE_SHRC_INCLUDED

##########################################
# set environment variables
##########################################
# set $EDITOR
if which vim > /dev/null 2>&1; then
  EDITOR=vim
elif which vi > /dev/null 2>&1; then
  EDITOR=vi
elif which editor > /dev/null 2>&1; then
  EDITOR=editor
fi
if test -n "$EDITOR"; then
  export EDITOR
fi

# set $LESSOPEN
if which lesspipe > /dev/null 2>&1; then
  LESSOPEN='|lesspipe %s'
elif which lesspipe.sh > /dev/null 2>&1; then
  LESSOPEN='|lesspipe.sh %s'
fi
if test -n "$LESSOPEN"; then
  export LESSOPEN
fi

