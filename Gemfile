# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'haml', '~> 5.1'
gem 'jbuilder', '~> 2.10'
gem 'pg', '~> 1.2'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'turbolinks', '~> 5.2'

gem 'bootsnap', '~> 1.4', require: false

gem 'contentful', '~> 2.15'

group :development, :test do
  gem 'bundler-audit', '~> 0.7.0'
  gem 'byebug', '~> 11.1', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot', '~> 6.1'
  gem 'rspec-rails', '~> 4.0'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'rubocop', '~> 0.90.0'
  gem 'web-console', '~> 4.0'
end

group :test do
  gem 'capybara', '~> 3.33'
  gem 'rake', '~> 13.0'
  gem 'selenium-webdriver', '~> 3.142'
  gem 'webdrivers', '~> 4.4'
end

gem 'tzinfo-data', '~> 1.2', platforms: %i[mingw mswin x64_mingw jruby]
