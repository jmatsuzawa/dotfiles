# This file contains bash-specific commands for login shell

if [[ -r "${HOME}/.config/sh/env.sh" ]]; then
  . "${HOME}/.config/sh/env.sh"
fi

if [[ -r "$HOME/.bashrc" ]]; then
  . "$HOME/.bashrc"
fi
