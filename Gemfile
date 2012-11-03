source 'https://rubygems.org'
gem 'rails', '3.2.8'
gem "haml"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "compass-rails"
  gem "zurb-foundation"
end

gem 'jquery-rails'

group :development, :test do
  gem "rspec-rails"
  gem 'sqlite3'
end

group :development do
  gem "pry-rails"
  gem "haml-rails"
  gem "hpricot"
  gem "ruby_parser"
end

group :test do
  gem "fabrication"
  gem "capybara"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "launchy"
end

group :production do
  gem 'pg'
end
