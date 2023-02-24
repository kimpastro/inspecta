source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem 'pg', '~> 1.4', '>= 1.4.5'
gem 'puma', '~> 6.1'
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem 'redis', '~> 5.0', '>= 5.0.6'
gem 'bcrypt', '~> 3.1', '>= 3.1.18'
gem "bootsnap", require: false
gem "view_component"
gem 'rack-cors'

group :development, :test do
  gem 'pry-byebug', '~> 3.10', '>= 3.10.1'
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  gem "web-console"
end

group :test do
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
end
