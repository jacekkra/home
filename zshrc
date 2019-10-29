autoload -Uz compinit && compinit
autoload -Uz colors && colors

setopt histignorealldups
setopt inc_append_history
setopt nocheckjobs
setopt nohup
setopt prompt_subst

eval $(dircolors)

PROMPT='$(generatePrompt)'
HISTFILE=~/.zsh_history
SAVEHIST=1000000
HISTSIZE=$SAVEHIST

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

generatePrompt() {
	prompt="$(dirs)"
	current_branch=$(git branch 2> /dev/null | sed -nE 's/\*\ \(?([^)]*)\)?/\1/p')

	if [ -n "$current_branch" ]; then
		prompt=${prompt/\~\/devel\//}" : "$current_branch
	fi

	echo %B$prompt%b
	echo "> "
}
