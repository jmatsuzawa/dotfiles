. "${HOME}/.config/sh/interactive.sh"

#######################################
# Prompt
#######################################
autoload -Uz colors; colors
# Enable parameter expansion, command substitution and arithmetic expansion
setopt PROMPT_SUBST

# The prompt is green.
# It will show a red 'X' attention at the beginning of the prompt, if the last command failed.
export PROMPT=$'`(( $? != 0 )) && echo "%{$bg[red]%}X%{$reset_color%} "`%{$fg[green]%}%n@%m:%~\n%#%{$reset_color%} '


function rprompt-git-current-branch {
  local name st color
  if [[ "$PWD" =~ '/\.git\>' ]]; then
    return
  fi
  # name=$(basename "$(git symbolic-ref HEAD 2> /dev/null)")
  name=$(git symbolic-ref HEAD 2>/dev/null | sed 's,refs/heads/,,')
  if [[ -z "$name" ]]; then
    return
  fi
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    color=${fg[green]}
  elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
    color=${fg[yellow]}
  elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
    color=${fg_bold[red]}
  else
    color=${fg[red]}
  fi
  echo "[%{$color%}$name%{$reset_color%}]"
}
# setopt re_match_pcre
setopt prompt_subst
RPROMPT='`rprompt-git-current-branch`'

#######################################
# Alias
#######################################
# Show history from the 1st entry. By default, zsh shows only the last few history entries.
alias history='history 1'


#######################################
# history
#######################################
export HISTFILE="${HOME}/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
setopt SHARE_HISTORy

#######################################
# options
#######################################
# See: https://zsh.sourceforge.io/Doc/Release/Options.html

setopt AUTO_PUSHd
unsetopt BEEP  # mute beeps
