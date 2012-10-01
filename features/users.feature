Feature: Steppin it up with some CRUD users

  Scenario: Users are created
    Given I am at root
    And There is a list of "Users"
    When I click "Add User"
    And I fill out the "User" form correctly
    Then I am presented with a new user
