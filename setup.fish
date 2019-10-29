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

alias -s vi=nvim
