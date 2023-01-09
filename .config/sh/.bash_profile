# This file contains bash-specific commands for login shell

. "${HOME}/.config/sh/env.sh"

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

. "${HOME}/.config/sh/interactive.sh"
