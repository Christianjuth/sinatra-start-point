Before("~@fails") do
  @fails = false
end

Before("@fails") do
  @fails = true
end

Before do
  def assert_cucumber(params)
    begin 
      assersion = params[:assersion].call
    rescue
      assersion = false
    end  
    if assersion.is_a?(TrueClass) || assersion.is_a?(FalseClass) 
      pass = [true, false].include?(assersion) ? assersion != @fails : assersion.nil?
    else
      pass = true
    end
    assert(pass, params[:error])
  end
end

After do
  unless @browser.nil?
    @browser.close
    @browser = nil
  end
  DatabaseCleaner.clean
end