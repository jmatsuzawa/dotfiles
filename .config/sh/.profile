# This file should contain dash-specific commands
if [ -r "${HOME}/.config/sh/env.sh" ]; then
  . "${HOME}/.config/sh/env.sh"
fi

: ${ENV:=${HOME}/.config/sh/.dashrc}
export ENV
