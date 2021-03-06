#!/bin/zsh
if which tput >/dev/null 2>&1; then
	ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
	RED="$(tput setaf 1)"
	GREEN="$(tput setaf 2)"
	YELLOW="$(tput setaf 3)"
	BLUE="$(tput setaf 4)"
	BOLD="$(tput bold)"
	NORMAL="$(tput sgr0)"
else
	RED=""
	GREEN=""
	YELLOW=""
	BLUE=""
	BOLD=""
	NORMAL=""
fi

printf "\n"

if [ ! -d "$ZSH" ]; then
    printf "${RED}You don't have oh-my-zsh installed.\n"
    printf "You'll need to install oh-my-zsh to be able to use ZShadow.${NORMAL}\n"
    printf "Exiting.\n\n"
    exit
fi

source $ZSH/oh-my-zsh.sh

cp -ar ./themes/ "$ZSH_CUSTOM"/

printf "${GREEN}Themes are copied into $YELLOW\""$ZSH_CUSTOM"\"$GREEN.\n"
printf "Change the theme line in your $YELLOW'.zshrc'$GREEN to either $YELLOW'ZShadow-Time'$GREEN or $YELLOW'ZShadow-Name'$GREEN.${NORMAL}\n\n"