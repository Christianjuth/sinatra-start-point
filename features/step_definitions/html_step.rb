Given /^on page "([^']*)"$/ do |url|
  if @browser.nil?
    @browser = Watir::Browser.start "localhost:3000"
  else
    @browser.reset!
  end
  @browser.goto("localhost:3000#{url}")
end

# ----------- search page ------------
Then /^text "([^']*)" on page$/ do |text|
  assert_cucumber({
    assersion: lambda{ @browser.text.include?(text) },
    error: "could not find text"
  })
end

Then /^button "([^']*)" on page$/ do |name|
  assert_cucumber({
    assersion: lambda{ @browser.button({value: name}).exists? },
    error: "could not find button"
  })
end

# ----------- page action -------------
Then /^fill input "([^']*)" with "([^']*)"$/ do |name, value|
  assert_cucumber({
    assersion: lambda{ @browser.text_field({name: name}).set(value) },
    error: "could not find input"
  })
end

Then /^click button "([^']*)" on page$/ do |name|
  assert_cucumber({
    assersion: lambda{ @browser.button({value: name}).click },
    error: "could not find button"
  })
end

