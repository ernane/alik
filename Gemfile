source :rubygems

gem "rails", "3.2.11"
gem "jquery-rails"
gem "will_paginate"
gem "draper"
gem "devise"
gem "mysql2"

# FORM BUILD
gem "reverse_captcha"
gem "validators"
gem "mail_form"
gem "simple_form"

# UPLOAD FILES
gem 'carrierwave'
gem 'rmagick'

# BACKGROUND JOBS
gem "sidekiq", "2.3.2"
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
  gem 'unicorn'
end

group :development do
  gem 'capistrano'
  gem 'letter_opener'
  gem 'foreman'
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'email_spec'
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl'
end
