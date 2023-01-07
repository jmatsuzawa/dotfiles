# This file is executed on every invocation of your shell.
# Different shells share this, so every command should be written in as compatible a way as possible.
# But prefer readability/maintainability to compatibility.
echo 'Running env.sh'
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
