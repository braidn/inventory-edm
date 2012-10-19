Feature: adding an item

  Background:
    Given I am at "items" root
    And there is an existing item
    And there is an existing user

  Scenario: success
    When I click "Add Item"
    And I fill out the item form correctly
    Then I successfully create an item
