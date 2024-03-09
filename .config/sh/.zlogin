# include-guard
if [[ -n "${ZLOGIN_INCLUDED}" ]]; then
  return
fi
export ZLOGIN_INCLUDED=1

if has_command tmux && [[ -z "${TMUX}" ]]; then
  tmux
fi
