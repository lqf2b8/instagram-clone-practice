
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.1.4'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'bootstrap-sass', '~> 3.2.0.2'
gem 'faker'
gem 'friendly_id'
gem 'simple_form'

group :development, :test do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'rack_session_access'
  gem 'selenium-webdriver'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'factory_girl_rails'
  gem 'simplecov'
  gem 'database_cleaner'
  gem 'sqlite3'
  gem 'pry'
  gem 'pry-doc'
  gem 'guard-rspec', require: false
  gem 'thin'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
