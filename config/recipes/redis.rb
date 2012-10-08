set_default(:redis_pid) { "/var/run/redis/redis-server.pid" }

namespace :redis do
  desc "Install Redis-Server"
  task :install, roles: :app do
    run "#{sudo} apt-get -y install redis-server"
  end
  after "deploy:install", "redis:install"

  %w[start stop restart].each do |command|
    desc "#{command} redis-server"
    task command, roles: :app do
      run "service redis-server #{command}"
    end
    after "deploy:#{command}", "redis-server:#{command}"
  end
end