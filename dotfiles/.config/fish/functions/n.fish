function n --wraps='git clean -d' --description 'alias n=git clean -d'
  git clean -d $argv; 
end
