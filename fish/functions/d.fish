# Defined in - @ line 1
function d --wraps='git diff' --description 'alias d=git diff'
  git diff $argv;
end
