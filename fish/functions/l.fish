# Defined in - @ line 1
function l --wraps='git log' --description 'alias l=git log'
  git log $argv;
end
