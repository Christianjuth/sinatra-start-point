Feature: user

Scenario: check if userers exsist
  Given a user with
    | username | johnsmith             |
    | email    | johnsmith@example.com |
    | password | password              |
  Then a user with username "johnsmith"

@fails
Scenario: create user with missing data
  Given a user with
    | username | johndoe |
  Then a user with username "johndoe"
