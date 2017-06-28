source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

ruby '2.4.1'
gem 'rails', '~> 5.1.1'
gem "binding_of_caller"
# Use Puma as the app server

gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


gem 'eventbrite_api'
gem 'rails_12factor', group: :production
# gem 'meetup_client'
gem 'google-api-client'

gem 'geocoder'
# gem 'rb-readline'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'httparty', '~> 0.15.5'
gem 'pg', '~> 0.18'

gem 'omniauth-google-oauth2'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'
gem 'sprockets', '~> 3.0'
gem 'jquery-rails'
gem 'font-awesome-sass'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
  gem 'better_errors'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
