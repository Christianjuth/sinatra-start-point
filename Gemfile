source "https://rubygems.org"
ruby "2.2.1"

gem "sinatra"
gem "activerecord"
gem "sinatra-activerecord"
gem "rake"
gem "bcrypt"
gem "json"
gem "pg"

group :development, :test do
  gem "shotgun"
  gem "pry"
  gem "tux"
  gem "sqlite3"
  gem "sass"
end

group :test do
  gem "cucumber"
  gem "capybara", require: "capybara/cucumber"
  gem "capybara-screenshot", require: "capybara-screenshot/cucumber"
  gem "capybara-webkit"
  gem "minitest", require: "minitest/spec"
  gem "database_cleaner"
end