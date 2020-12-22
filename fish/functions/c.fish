# Defined in - @ line 1
function c --wraps='git checkout' --description 'alias c=git checkout'
  git checkout $argv;
end
