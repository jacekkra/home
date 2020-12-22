# Defined in - @ line 1
function p --wraps='git push' --description 'alias p=git push'
  git push $argv;
end
