Feature: editing an item

  Background:
    Given there is an existing item
    And there is an existing user
    And I am at "items" edit

  Scenario: modifying an item
    When I modify the items form
    Then I successfully modify the item
