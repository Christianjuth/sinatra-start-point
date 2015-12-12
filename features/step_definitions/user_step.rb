Given /^a user with$/ do |params|
  params = params.rows_hash
  unless User.find_by({username: params[:username]})
    user = User.new(params)
    assert user.save
  end
end

Then /^a user with username "([^']*)"$/ do |username|
  assert User.exists?({username: username})
end