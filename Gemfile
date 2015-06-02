source 'https://rubygems.org'

gem 'rails', '4.1.10'

# Gems related to programming in rails and ruby
gem 'pg', '~> 0.18.0.pre20141117110243'
gem 'draper', '~> 2.1.0'
gem 'decent_exposure', '~> 2.3.2'
gem 'decent_decoration', '~> 0.0.6'
gem 'quiet_assets', '~> 1.1.0'
gem 'better_errors', '~> 2.1.1'
gem 'devise', '~> 3.4.1'

# Gems related to optimizing code
gem 'rack-mini-profiler'
gem 'brakeman', '~> 3.0.3'
gem 'rubycritic', '~> 1.4.0'
gem 'rails_best_practices', '~> 1.15.7'

# Gems related to javascript
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby

gem 'sdoc', '~> 0.4.0', group: :doc

# Gems related to views
gem 'mail_form', '>= 1.5.0'
gem 'simple_form', '>= 3.1.0'
gem 'figaro', '~> 1.1.1'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.3'
gem 'haml-rails', '~> 0.9.0'
gem 'skrollr-rails'

# Gems related to google maps
gem 'gmaps4rails', '~> 2.1.2'

group :development do
  gem 'spring'
  gem 'bullet', '~> 4.14.5'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'pry'
  gem 'faker', '~> 1.4.3'
  gem 'capybara'
end

group :test do
  gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin ]

# Ruby version, required for Heroku install
ruby "2.1.5"