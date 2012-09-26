set_default(:sphinx_pid)      { "#{current_path}/tmp/pids/searchd.development.pid" }
set_default(:sphinx_query_log){ "#{shared_path}/log/searchd.query.log" }
set_default(:sphinx_log)      { "#{shared_path}/log/searchd.log" }

namespace :sphinx do
  desc "Install Sphinx-Search"
  task :install, roles: :app do
    run "#{sudo} apt-get -y sphinxsearch"
  end
  after "deploy:install", "sphinx:install"

  desc "Generate the production.sphinx.conf configuration file."
  task :setup, roles: :app do
    run "mkdir -p #{shared_path}/config/db/sphinx"
    template "production.sphinx.conf.erb", "#{shared_path}/config/production.sphinx.conf"
    template "app_config.yml.erb", "#{shared_path}/config/app_config.yml"
  end
  after "deploy:setup", "sphinx:setup"


  desc "Symlink the database.yml file into latest release"
  task :symlink, roles: :app do
    run "ln -nfs #{shared_path}/config/app_config.yml #{release_path}/config/app_config.yml"
    run "ln -nfs #{shared_path}/config/production.sphinx.conf #{release_path}/config/production.sphinx.conf"
  end
  after "deploy:finalize_update", "sphinx:symlink"
  
end