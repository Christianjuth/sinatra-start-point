require "bundler"
Bundler.require

configure :development, :test do
  set :db_adapter, "sqlite3"
  set :db_location, "db/development.db"
end
