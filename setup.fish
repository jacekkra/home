function fish_prompt
	dirs | read prompt

	git branch 2> /dev/null | sed -nE 's/\*\ \(?([^)]*)\)?/\1/p' | read current_branch
	if test -n "$current_branch"
		git rev-parse --show-toplevel | read src_root
		diff "$src_root/Podfile.lock" "$src_root/Pods/Manifest.lock" 2> /dev/null | read pods_diff
		if test -n "$pods_diff"
			set_color brwhite
			set_color -b red
			echo -n "Pods out of sync!"
			set_color reset
			echo ""
		end

		set prompt (string replace "~/devel/" "" $prompt)" : "$current_branch

	end

	set_color -o
	echo $prompt
	set_color reset
	echo "> "
end
funcsave fish_prompt

alias -s a="git add"
alias -s b="git branch"
alias -s c="git checkout"
alias -s d="git diff"
alias -s e="git reset"
alias -s f="git fetch --prune"
alias -s g="git log --graph --oneline --all --decorate-refs-exclude=\"refs/tags/builds/*\""
alias -s i="bundle install && bundle exec pod install"
alias -s k="git commit"
alias -s l="git log"
alias -s m="git merge"
alias -s n="git clean -d"
alias -s p="git push"
alias -s r="git rebase"
alias -s s="git status"
alias -s t="git mergetool"
alias -s u="git push -u origin HEAD"
alias -s v="nvim"
alias -s x="git branch --merged | grep -v \* | xargs git branch -d"
