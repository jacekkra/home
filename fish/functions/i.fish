# Defined in - @ line 1
function i --wraps='bundle install && bundle exec pod install' --description 'alias i=bundle install && bundle exec pod install'
  bundle install && bundle exec pod install $argv;
end
