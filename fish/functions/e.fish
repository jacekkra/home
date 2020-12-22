# Defined in - @ line 1
function e --wraps='git reset' --description 'alias e=git reset'
  git reset $argv;
end
