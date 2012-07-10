source :rubygems

gem "rails", "3.2.6"
gem "jquery-rails"
gem "will_paginate"
gem "mail_form"
gem "pg"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier",     ">= 1.0.3"
end

group :development do
  gem "mailcatcher"
  gem "thin"
  gem "pry",            :require => false
  gem "awesome_print",  :require => false
end

group :development, :test do
  gem "capistrano"
  gem "rspec-rails"
  gem "capybara"
end

group :test do
  gem "factory_girl"
  gem "factory_girl-preload"
end
