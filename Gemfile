source :rubygems

gem "rails", "3.2.8"
gem "jquery-rails"
gem "will_paginate"
gem "mail_form"
gem "simple_form"
gem "draper"
gem "devise"
gem "thinking-sphinx"
#gem "pg"
#gem "pg_search"
gem "mysql2"

# ADMIN
gem "activeadmin"
gem "meta_search"
gem "kaminari"

# BACKGROUND JOBS
gem "delayed_job_active_record"
gem "delayed_job_web"
gem "daemons"

group :assets do
  gem "sass-rails"
  gem "coffee-rails"
  gem "uglifier"
  gem "therubyracer",   :platform => :ruby

  gem 'jquery-ui-rails'
  gem 'compass-rails'
  gem 'zurb-foundation'
end

group :production do
  gem "unicorn"
end

group :development, :test do
  gem "pry",            :require => false
  gem "awesome_print",  :require => false
  gem "rspec-rails"
  gem "capybara"
  
  gem "rb-fsevent",     :require => false
  gem "guard"
  gem "guard-cucumber"
  gem "guard-rspec"
  gem "growl"
end

group :test do
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
end

group :development do
  gem "thin"
  gem "capistrano"
  gem "mailcatcher"
end