# This file is executed on invocation of interactive shell.
# Different shells share this, so every command should be written in as compatible a way as possible.
# But prefer readability/maintainability to compatibility.

#######################################
# Aliases
#######################################
# Sub processes do not inherit aliases, so they need to be set everytime before include-guard.
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias sl=ls
alias view='vim -R'
alias veiw=view

# Prevent vscode from appending a newline to EDITOR.
# I'm not sure why and how, but launching vscode from wsl terminal by `code .` will appends a newline.
EDITOR=`echo "$EDITOR" | tr -d '\n'`

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
  elif which nano > /dev/null 2>&1; then
    EDITOR=nano
    export EDITOR
  fi
fi

# set LESSOPEN for less(1) preprocessor
if has_command lesspipe.sh; then # for wofr06/lesspipe, RHEL
  LESSOPEN='||lesspipe.sh %s'
elif has_command lesspipe; then # for Debian
  LESSOPEN='|lesspipe %s'
fi
if [ -n "$LESSOPEN" ]; then
  export LESSOPEN
fi

# dash reads $ENV, if the shell is interactive
ENV="${XDG_CONFIG_HOME}/sh/.dashrc"
export ENV

#######################################
# Python
#######################################
PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pystartuprc.py"
export PYTHONSTARTUP
