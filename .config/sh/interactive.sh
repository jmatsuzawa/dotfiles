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
EDITOR=$(echo "$EDITOR" | tr -d '\n')

# nvm
if [ -d "${HOME}/.config/nvm" ]; then
  export NVM_DIR="${HOME}/.config/nvm"
  [ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
fi

# pyenv
if [ -d "${HOME}/.pyenv" ]; then
  if [ -z "${PYENV_ROOT}" ]; then
    export PYENV_ROOT="${HOME}/.pyenv"
    PATH="${PYENV_ROOT}/bin:${PATH}"
  fi
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# rust
if [ -r "${HOME}/.cargo/env" ]; then
  . "${HOME}/.cargo/env"
fi

# include-guard
if [ -n "${INTERACTIVE_SH_INCLUDED}" ]; then
  return
else
  export INTERACTIVE_SH_INCLUDED=1
fi

# go
if [ -d "${HOME}/go/bin" ]; then
  PATH="${HOME}/go/bin:${PATH}"
fi
if [ -d "${HOME}/.local/go/bin" ]; then
  PATH="${HOME}/.local/go/bin:${PATH}"
fi

# . "${HOME}/.config/sh/env.sh"

# set EDITOR
if [ -z "${EDITIR}" ]; then
  if which vim > /dev/null 2>&1; then
    export EDITOR=vim
  elif which vi > /dev/null 2>&1; then
    export EDITOR=vi
  elif which editor > /dev/null 2>&1; then
    export EDITOR=editor
  elif which nano > /dev/null 2>&1; then
    export EDITOR=nano
  fi
fi

export LESS="${LESS} R"
# set LESSOPEN for less(1) preprocessor
if has_command lesspipe.sh; then # for wofr06/lesspipe, RHEL
  if [ -x "${HOME}/.config/custom-lesspipe" ]; then
    export LESSOPEN="||${HOME}/.config/custom-lesspipe %s"
  else
    export LESSOPEN='||lesspipe.sh %s'
  fi
elif has_command lesspipe; then # for Debian
  if [ -x "${HOME}/.config/custom-lesspipe" ]; then
    # Debian lesspipe does not support double pipes...
    export LESSOPEN="|${HOME}/.config/custom-lesspipe %s"
  else
    export LESSOPEN='|lesspipe %s'
  fi
fi

# dash reads $ENV, if the shell is interactive
export ENV="${HOME}/.config/sh/.dashrc"

#######################################
# Python
#######################################
export PYTHONSTARTUP="${HOME}/.config/python/pystartuprc.py"

# zig
if [ -x "${HOME}/zig/zig" ]; then
  PATH="${HOME}/zig:${PATH}"
fi

export PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

export HOSTNAME=$(uname -n)
