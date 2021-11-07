function x --wraps=git\ branch\ --merged\ \|\ grep\ -v\ \\\*\ \|\ xargs\ git\ branch\ -d --description alias\ x=git\ branch\ --merged\ \|\ grep\ -v\ \\\*\ \|\ xargs\ git\ branch\ -d
  git branch --merged | grep -v \* | xargs git branch -d $argv; 
end
