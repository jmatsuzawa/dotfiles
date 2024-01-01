# To prevent duplicate entries in path
typeset -U PATH path

if [[ -r "${HOME}/.config/sh/env.sh" ]]; then
  . "${HOME}/.config/sh/env.sh"
fi
