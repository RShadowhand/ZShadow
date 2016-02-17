# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:

PROMPT='[%{$fg[green]%}%*%{$fg[white]%}][%{$fg[yellow]%}%2~%{$fg[white]%}]%{$reset_color%}%{$fg[green]%}%(!.#.$) %{$reset_color%}'
RPROMPT='$(git_prompt_info)'

id -G | grep -qE '\<(544|0)\>' && PROMPT='[%{$fg[red]%}%*%{$fg[white]%}][%{$fg[yellow]%}%2~%{$fg[white]%}]%{$reset_color%}%{$fg[red]%}# %{$reset_color%}' && RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_TERM_TITLE_IDLE="[%n@%m %~]"