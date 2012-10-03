Feature: adding an item

  Scenario: success
    Given I am at "items" root
    And there is an existing item
    And there is an existing user
    When I click "Add Item"
    And I fill out the item form correctly
    Then I successfully create an item
