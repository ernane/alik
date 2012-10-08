namespace :sphinx do
  desc "Install Sphinx-Search"
  task :install, roles: :app do
    run "#{sudo} apt-get -y install sphinxsearch"
  end
  after "deploy:install", "sphinx:install"
  
  desc "Symlink Sphinx indexes"
  task :symlink_indexes, :roles => [:app] do
    run "ln -nfs #{shared_path}/db/sphinx #{release_path}/db/sphinx"
  end
  
  %w[start stop restart index rebuild reindex config].each do |command|
    desc "#{command} Sphinx"
    task command, roles: :app do
      run "cd #{current_path} && bundle exec rake ts:#{command} RAILS_ENV=production"
    end
    #before "deploy:update_code", "sphinx:stop"
    #after "deploy:update_code", "sphinx:start"
  end
end