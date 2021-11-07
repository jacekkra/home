function i --wraps='bundle install && bundle exec pod repo-art update smartsdk && bundle exec pod install' --description 'alias i=bundle install && bundle exec pod repo-art update smartsdk && bundle exec pod install'
  bundle install && bundle exec pod repo-art update smartsdk && bundle exec pod install $argv; 
end
