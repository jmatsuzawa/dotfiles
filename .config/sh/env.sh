# This file is executed on every invocation of your shell.
# Different shells share this, so every command should be written in as compatible a way as possible.
# But prefer readability/maintainability to compatibility.

has_command() {
  type "$@" > /dev/null 2>&1
}

# include-guard
if [ -n "${ENV_SH_INCLUDED}" ]; then
  return
else
  ENV_SH_INCLUDED=1
  export ENV_SH_INCLUDED
fi
