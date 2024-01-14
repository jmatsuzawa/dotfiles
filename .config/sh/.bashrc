if [[ -r "${HOME}/.bashrc.dist" ]]; then
  . "${HOME}/.bashrc.dist"
fi

if [[ -r "${HOME}/.config/sh/interactive.sh" ]]; then
  . "${HOME}/.config/sh/interactive.sh"
fi

export HISTFILE="${HOME}/.bash_history"
export HISTFILESIZE=100000
export HISTSIZE=100000

# The prompt is green.
# It will show a red 'X' attention at the beginning of the prompt, if the last command failed.
export PS1='$( __status=$?; (( ${__status} != 0 )) && echo "\[\033[1;37;41m\]X(${__status})\[\033[0m\] ")\[\033[1;32m\]\u@\h:\w\n(\s)$\[\033[0m\] '
