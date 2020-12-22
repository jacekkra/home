# Defined in - @ line 1
function g --wraps='git log --graph --oneline --all --decorate-refs-exclude="refs/tags/builds/*"' --description 'alias g=git log --graph --oneline --all --decorate-refs-exclude="refs/tags/builds/*"'
  git log --graph --oneline --all --decorate-refs-exclude="refs/tags/builds/*" $argv;
end
