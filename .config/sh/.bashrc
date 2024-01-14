if [[ -f "${HOME}/.bashrc.dist" ]]; then
  . "${HOME}/.bashrc.dist"
fi

# The prompt is green.
# It will show a red 'X' attention at the beginning of the prompt, if the last command failed.
export PS1='$( __status=$?; (( ${__status} != 0 )) && echo "\[\033[1;37;41m\]X(${__status})\[\033[0m\] ")\[\033[1;32m\]\u@\h:\w\n(\s)$\[\033[0m\] '

# nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
