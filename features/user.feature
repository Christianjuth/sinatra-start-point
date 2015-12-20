Feature: user

Scenario: check if userers exsist
  Given a user
    | username | johnsmith             |
    | email    | johnsmith@example.com |
    | password | password              |
  Then users has username "johnsmith"

@fails
Scenario: create user with missing data
  Given a user
    | username | johndoe |
  Then users has username "johndoe"

Scenario: create row in table
  Given table "users" a record
    | username | johnsmith             |
    | email    | johnsmith@example.com |
    | password | password              |
  Then table "users" has record
    | username | johnsmith |

@fails
Scenario: visite page
  Given on page "/signup"
  When button "Login" on page
  Then click button "Login" on page

Scenario: login
  Given on page "/login"
  When button "Login" on page
  Then fill input "username" with "johnsmith"
  Then fill input "password" with "password"
  Then click button "Login" on page