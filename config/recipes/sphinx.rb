set_default(:sphinx_pid)         { "#{current_path}/tmp/pids/searchd.development.pid" }
set_default(:sphinx_query_log)   { "#{shared_path}/log/searchd.query.log" }
set_default(:sphinx_log)         { "#{shared_path}/log/searchd.log" }
set_default(:sphinx_searchd_file){ "#{shared_path}/config/db/sphinx" }
before 'deploy:update_code', 'thinking_sphinx:stop'
after 'deploy:update_code', 'thinking_sphinx:start'

namespace :sphinx do
  desc "Install Sphinx-Search"
  task :install, roles: :app do
    run "#{sudo} apt-get -y install sphinxsearch"
  end
  after "deploy:install", "sphinx:install"

  desc "Generate the production.sphinx.conf configuration file."
  task :setup, roles: :app do
    run "mkdir -p #{shared_path}/config/db/sphinx"
    #template "production.sphinx.conf.erb", "#{shared_path}/config/production.sphinx.conf"
    template "sphinx.yml.erb", "#{shared_path}/config/sphinx.yml"
  end
  after "deploy:setup", "sphinx:setup"

  desc "Symlink Sphinx indexes"
  task :symlink_indexes, :roles => [:app] do
    run "ln -nfs #{shared_path}/db/sphinx #{release_path}/db/sphinx"
  end
  after 'deploy:finalize_update', 'sphinx:symlink_indexes'


  desc "Symlink the database.yml file into latest release"
  task :symlink, roles: :app do
    run "ln -nfs #{shared_path}/config/sphinx.yml #{release_path}/config/sphinx.yml"
    #run "ln -nfs #{shared_path}/config/production.sphinx.conf #{release_path}/config/production.sphinx.conf"
  end
  after "deploy:finalize_update", "sphinx:symlink"
  
end