@javascript
Feature: user

Scenario: check if userers exsist
  Given a user with
    | username | johnsmith             |
    | email    | johnsmith@example.com |
    | password | password              |
  And a user with
    | username | christianjuth         |
    | email    | cjuth2@@gmail.com     |
    | password | password              |
  Then a user with username "johnsmith"
  And a user with username "christianjuth"
