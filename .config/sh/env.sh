# This file is executed on every invocation of your shell.

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
