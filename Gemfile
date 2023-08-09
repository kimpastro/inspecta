source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem 'puma'
gem "jsbundling-rails"
gem "cssbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem 'bcrypt'
gem "bootsnap", require: false
gem 'rack-cors'

group :development, :test do
  gem 'pry-byebug'
  gem 'foreman', require: false
  gem 'faker'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem "web-console"
end

gem "dockerfile-rails", require: false

group :test do
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "capybara"
end

gem "hashid-rails"
gem 'view_component'
gem "sqlite3", "~> 1.6"

gem "pg", "~> 1.5"

gem "redis", "~> 5.0"
