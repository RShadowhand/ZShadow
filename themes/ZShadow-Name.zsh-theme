# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:

PROMPT='[%{$fg[green]%}%n %{$fg[yellow]%}%2~%{$fg[white]%}]%{$reset_color%}%{$fg[green]%}%(!.#.$) %{$reset_color%}'
RPROMPT='%{$fg[green]%}$(git_prompt_info)[%*]%{$reset_color%}'

id -G | grep -qE '\<(544|0)\>' && PROMPT='[%{$fg[red]%}%n %{$fg[yellow]%}%2~%{$fg[white]%}]%{$reset_color%}%{$fg[red]%}# %{$reset_color%}' && RPROMPT='$(git_prompt_info)%{$fg[red]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_TERM_TITLE_IDLE="[%n@%m %~]"