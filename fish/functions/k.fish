# Defined in - @ line 1
function k --wraps='git commit' --description 'alias k=git commit'
  git commit $argv;
end
