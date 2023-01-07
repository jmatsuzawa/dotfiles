. "${HOME}/.config/sh/interactive.sh"

# Prompt settings
autoload -Uz colors; colors
setopt prompt_subst

# The prompt is green.
# It will show a red 'X' attention at the beginning of the prompt, if the last command failed.
export PROMPT=$'`(( $? != 0 )) && echo "%{$bg[red]%}X%{$reset_color%} "`%{$fg[green]%}%n@%m:%~\n%#%{$reset_color%} '
