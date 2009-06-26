load 'deploy'

set :application, "simple-rack"
set :repository,  "git@github.com:halorgium/simple-rack.git"

set :deploy_to, "/var/www/#{application}"

set :scm, :git

ssh_options[:forward_agent] = true

set :user, "deploy"
set :runner, user
set :use_sudo, false
set :slice_ip, "174.143.245.125"
role :app, slice_ip
role :web, slice_ip
role :db,  slice_ip, :primary => true

namespace :deploy do
  task :restart do
    run "mkdir -p #{current_release}/tmp && touch #{current_release}/tmp/restart.txt"
  end
end

# vim:ft=ruby
