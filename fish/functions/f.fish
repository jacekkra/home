# Defined in - @ line 1
function f --wraps='git fetch --prune' --description 'alias f=git fetch --prune'
  git fetch --prune $argv;
end
