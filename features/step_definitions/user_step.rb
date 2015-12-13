Given /^a user with$/ do |params|
  params = params.rows_hash
  unless User.find_by({username: params[:username]})
    assert_cucumber(User.new(params).save, "could not create user")
  end
end

Then /^a user with username "([^']*)"$/ do |username|
  assert_cucumber(User.exists?({username: username}), "could not find user")
end