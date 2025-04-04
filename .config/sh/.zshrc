if [[ -r "${HOME}/.config/sh/interactive.sh" ]]; then
  . "${HOME}/.config/sh/interactive.sh"
fi

#######################################
# Prompt
#######################################
autoload -Uz colors; colors
# Enable parameter expansion, command substitution and arithmetic expansion
setopt PROMPT_SUBST

function git-branch-name {
  local branch status_msg color
  if [[ "$PWD" =~ '/\.git\>' ]]; then
    return
  fi
  branch=$(git symbolic-ref HEAD 2>/dev/null | sed 's,refs/heads/,,')
  if [[ -z "$branch" ]]; then
    return
  fi
  status_msg=$(git status 2> /dev/null)
  if [[ -n $(echo "$status_msg" | grep "^nothing to") ]]; then
    color=${fg[green]}
  elif [[ -n $(echo "$status_msg" | grep "^nothing added") ]]; then
    color=${fg[yellow]}
  elif [[ -n $(echo "$status_msg" | grep "^# Untracked") ]]; then
    color=${fg_bold[red]}
  else
    color=${fg[red]}
  fi
  echo "(%{$color%}$branch%{$reset_color%})"
}

# The prompt is green.
# If the last command failed, the prompt shows the status code in red the beginning
export PROMPT=$'$(__status=$?; (( $__status != 0 )) && echo "%{$bg[red]%}($__status)%{$reset_color%} ")%{$fg[green]%}%n@%m:%~ %{$reset_color%}$(git-branch-name)%{$fg[green]%}\n%#%{$reset_color%} '

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
setopt SHARE_HISTORY

#######################################
# key bindings
#######################################
bindkey -e

# If you enter some text and enter Ctrl-P or Ctrl-N, shell will respectively shows up or down history entry which begins with the text
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '\C-P' history-beginning-search-backward-end
bindkey '\C-N' history-beginning-search-forward-end

#######################################
# options
#######################################
# See: https://zsh.sourceforge.io/Doc/Release/Options.html

setopt AUTO_PUSHD
unsetopt BEEP  # mute beeps

#######################################
# completion
#######################################
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit -i # `-i` ignores insecure directories
# End of lines added by compinstall
