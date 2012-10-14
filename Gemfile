source :rubygems

gem "rails", "3.2.8"
gem "jquery-rails"
gem "will_paginate"
gem "draper"
gem "devise"
gem "thinking-sphinx"
gem "mysql2"
gem "whenever", require: false

# FORM BUILD
gem "reverse_captcha"
gem "validators"
gem "mail_form"
gem "simple_form"

# UPLOAD FILES
gem 'carrierwave'
gem 'rmagick'

# BACKGROUND JOBS
gem "sidekiq"
gem 'sinatra', require: false
gem 'slim'

# ACTIVE ADMIN
gem "activeadmin"
gem "meta_search"
gem "kaminari"

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
  gem "test_notifier"
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