# Defined in - @ line 1
function t --wraps='git mergetool' --description 'alias t=git mergetool'
  git mergetool $argv;
end
