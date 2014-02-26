for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
  eval PR_$color='%{$fg[${(L)color}]%}'
done


if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
  	eval arrows="%{$fg[blue]%}"
else
	eval arrows="%{$fg[white]%}"
fi

if [[ $UID -ge 500 ]]; then
	eval userprompt="${PR_RED}%n@%m"
elif [[ $UID -eq 0 ]]; then
	eval userprompt="${PR_GREEN}%n${PR_RED}@%m"
fi


ZSH_THEME_GIT_PROMPT_PREFIX=" git:%{$fg_bold[$ZSH_THEME_COLOR]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[yellow]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓"


PROMPT='${userprompt} %{$fg_no_bold[white]%} %~%  %{$reset_color%} $(git_prompt_info)$(git_prompt_status) %{$reset_color%}
${arrows} >>  %{$reset_color%}'

