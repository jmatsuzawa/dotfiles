# include-guard
if [[ -n "${ZLOGIN_INCLUDED}" ]]; then
  return
fi
export ZLOGIN_INCLUDED=1

if has_command tmux && [[ -z "${TMUX}" ]]; then
  # If there is only one existing tmux session, attach it
  if [[ $(tmux list-sessions 2>&1 | wc -l) -eq 1 ]]; then
    tmux_session=$(tmux list-sessions 2>&1 | sed 's/^\([^:]*\):.*/\1/')
    tmux attach -t "${tmux_session}"
  # If there are two or more tmux sessions, show them
  elif [[ $(tmux list-sessions 2>&1 | wc -l) -gt 1 ]]; then
    echo "There are multiple tmux sessions:"
    tmux list-sessions
  # If no session exists, run tmux
  else
    tmux
  fi
fi
