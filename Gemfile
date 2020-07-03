source "https://rubygems.org"

gem "sinatra"
gem "activerecord"
gem "sinatra-activerecord"
gem "bcrypt"
gem "require_all"
gem 'dotenv'
gem 'foreman'
gem 'rails_12factor'
gem 'thin'
gem 'iex-ruby-client'
gem "sinatra-flash"
gem 'sanitize'

group :production do
  gem 'pg'
end

group :development do 
  gem 'sqlite3'
  gem 'shotgun'
  gem 'tux'
  gem 'pry'

end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end