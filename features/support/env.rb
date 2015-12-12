ENV["RACK_ENV"] = "test"
require_relative "../../app/controllers/application_controller"
DatabaseCleaner.strategy = :truncation
 
World do
  include Test::Unit::Assertions
  Capybara.app = ApplicationController
end