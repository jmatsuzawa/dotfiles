# This file should contain dash-specific commands
if [ -r "${HOME}/.config/sh/env.sh" ]; then
  . "${HOME}/.config/sh/env.sh"
fi

if [ -r "${HOME}/.config/sh/.dashrc" ]; then
  . "${HOME}/.config/sh/.dashrc"
fi
