source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '~> 4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

# UI Extras
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails'
gem 'business_time', github: 'bokmann/business_time'
gem 'bootstrap-datepicker-rails'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'paperclip', '~> 4.2'

# ActiveJob
gem 'resque'
gem 'resque-scheduler'

# For Heroku
gem 'puma'

#for later
# gem 'cancan'
# gem "devise", ">= 2.2.3"
# gem 'devise-async', '0.7.0'
# gem "devise_invitable", ">= 1.1.5"
# gem "rolify"
# gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
# gem "compass-rails", ">= 1.0.3", :group => :assets

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :development do
  gem 'web-console', '~> 2.0'
  gem 'rails_layout'
  gem 'quiet_assets'
  gem 'rails-erd'
  gem "spring"
  gem "spring-commands-rspec"
  gem 'seed_dump'
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.0"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rails_stdout_logging"
  gem "rack-timeout"
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
