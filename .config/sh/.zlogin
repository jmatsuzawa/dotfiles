# include-guard
if [[ -n "${ZLOGIN_INCLUDED}" ]]; then
  return
fi
export ZLOGIN_INCLUDED=1

if has_command tmux && [[ -z "${TMUX}" ]]; then
  # If no tmux session exists, run tmux
  if ! tmux list-sessions >/dev/null 2>&1; then
    tmux
  # If there is a session already attached, do not run tmux.
  # In this case, probably I want a new clean terminal.
  elif tmux list-sessions | grep ' ([^()]*attached[^()]*)' >/dev/null 2>&1; then
    ; # Do nothing
  elif [[ $(tmux list-sessions 2>&1 | wc -l) -eq 1 ]]; then
    tmux_session=$(tmux list-sessions 2>&1 | sed 's/^\([^:]*\):.*/\1/')
    tmux attach -t "${tmux_session}"
  elif [[ $(tmux list-sessions 2>&1 | wc -l) -gt 1 ]]; then
    echo "There are multiple tmux sessions:"
    tmux list-sessions
  fi
fi
