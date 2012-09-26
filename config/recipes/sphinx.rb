namespace :sphinx do
  desc "Install Sphinx-Search"
  task :install, roles: :app do
    run "#{sudo} apt-get -y install sphinxsearch"
  end
  after "deploy:install", "sphinx:install"
end