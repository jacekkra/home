#!/usr/bin/env fish

function fish_prompt
    dirs | read prompt

    git branch 2>/dev/null | sed -nE 's/\*\ \(?([^)]*)\)?/\1/p' | read current_branch
    if test -n "$current_branch"
        set prompt (string replace "~/devel/" "" $prompt)" : "$current_branch
    end

    set_color -o
    echo $prompt
    set_color reset
    echo "> "
end
funcsave fish_prompt

function x
    # remove merged branches, useful for rebase-based flow
    git branch --merged | grep -v \* | xargs git branch -d

    # remove branches whose upstream is gone, useful for merge-based flow
    git branch -vv | grep ': gone]' | cut -f3 -d ' ' | xargs git branch -D
end

alias -s a="git add"
alias -s b="git branch"
alias -s c="git checkout"
alias -s d="git diff"
alias -s e="git reset"
alias -s f="git fetch"
# alias -s g=
# alias -s h=
alias -s i="git cherry-pick"
# alias -s j=
alias -s k="git commit"
alias -s l="git log"
alias -s m="git merge"
alias -s n="git clean"
alias -s o="git restore"
alias -s p="git push"
# alias -s q=
alias -s r="git rebase"
alias -s s="git status"
alias -s t="git mergetool"
alias -s u="git pull --rebase"
alias -s v="nvim"
funcsave x
# alias -s y=
# alias -s z=

set -Ux FASTLANE_USER jacek.krasiukianis@proton.ch
set -Ux VISUAL nvim

git config --global advice.skippedCherryPicks false
git config --global diff.colorMoved zebra
git config --global fetch.prune true
git config --global merge.tool p4merge
git config --global mergetool.keepBackup false
git config --global pull.rebase true
git config --global push.autoSetupRemote true
git config --global user.email "jacek.krasiukianis@proton.ch"
git config --global user.name "Jacek Krasiukianis"
