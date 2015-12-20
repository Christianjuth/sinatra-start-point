ENV["RACK_ENV"] = "test"
require_relative "../../app/controllers/application_controller"
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

class MinitestWorld
  extend Minitest::Assertions
  attr_accessor :assertions

  def initialize
    self.assertions = 0
  end
end
 
World do
  MinitestWorld.new
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
  Capybara.app = ApplicationController
end