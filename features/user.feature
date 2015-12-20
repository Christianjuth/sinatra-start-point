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