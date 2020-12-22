# Defined in - @ line 1
function r --wraps='git rebase' --description 'alias r=git rebase'
  git rebase $argv;
end
