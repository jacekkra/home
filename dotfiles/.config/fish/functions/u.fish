function u --wraps='git push -u origin HEAD' --description 'alias u=git push -u origin HEAD'
  git push -u origin HEAD $argv; 
end
