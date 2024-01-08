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

has_command() {
  type "$@" > /dev/null 2>&1
}

export PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

# pyenv
if [ -d "${HOME}/.pyenv" ]; then
  export PYENV_ROOT="${HOME}/.pyenv"
  PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# nvm
NVM_DIR="${HOME}/.config/nvm"
export NVM_DIR
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
