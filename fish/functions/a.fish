# Defined in - @ line 1
function a --wraps='git add' --description 'alias a=git add'
  git add $argv;
end
