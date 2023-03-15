source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem 'pg', '~> 1.4', '>= 1.4.5'
gem 'puma', '~> 6.1'
gem "jsbundling-rails"
gem "cssbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem 'redis', '~> 5.0', '>= 5.0.6'
gem 'bcrypt', '~> 3.1', '>= 3.1.18'
gem "bootsnap", require: false
gem 'rack-cors'

group :development, :test do
  gem 'pry-byebug', '~> 3.10', '>= 3.10.1'
  gem 'faker'
  gem 'factory_bot_rails'
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
end

group :development do
  gem "web-console"
  gem "dockerfile-rails", ">= 1.2"
end

group :test do
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
  gem 'capybara', '~> 3.38'
end

gem "hashid-rails", "~> 1.0"
