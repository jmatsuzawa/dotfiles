# This file is executed on every invocation of your shell.
# Different shells share this, so every command should be written in as compatible a way as possible.
# But prefer readability/maintainability to compatibility.

# include-guard
if [ -n "${ENV_SH_INCLUDED}" ]; then
  return
else
  ENV_SH_INCLUDED=1
  export ENV_SH_INCLUDED
fi

if [ -z "${XDG_CONFIG_HOME}" ]; then
  XDG_CONFIG_HOME="${HOME}/.config"
  export XDG_CONFIG_HOME
fi

PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
export PATH

# pyenv
if [ -d "${HOME}/.pyenv" ]; then
  PYENV_ROOT="${HOME}/.pyenv"
  export PYENV_ROOT
  PATH="${PYENV_ROOT}/bin:${PATH}"
  export PATH
  eval "`pyenv init --path`"
  eval "`pyenv init -`"
fi

# nvm
NVM_DIR="${HOME}/.config/nvm"
export NVM_DIR
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
