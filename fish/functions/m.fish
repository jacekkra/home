# Defined in - @ line 1
function m --wraps='git merge' --description 'alias m=git merge'
  git merge $argv;
end
