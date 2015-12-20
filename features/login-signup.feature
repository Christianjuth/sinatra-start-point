Feature: login & signup

@fails
Scenario: login button on signup page
  Given on page "/signup"
  When button "Login" on page
  Then click button "Login" on page

Scenario: login user
  Given on page "/login"
  When button "Login" on page
  Then fill input "username" with "johnsmith"
  Then fill input "password" with "password"
  Then click button "Login" on page