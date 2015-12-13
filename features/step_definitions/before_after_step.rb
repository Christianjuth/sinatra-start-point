Before("~@fails") do
  def assert_cucumber(assersion, msg = "an error was thrown")
    assert(assersion == true, msg)
  end
end

Before("@fails") do
  def assert_cucumber(assersion, msg = "an error was thrown")
    assert(assersion == false, msg)
  end
end

After do
  DatabaseCleaner.clean
end