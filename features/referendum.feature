Feature: referendum page

  @javascript
  Scenario: showing the results of a referendum
    Given there is a referendum in the database
    When  I visit the home page
    And   click the link to see the results
    Then  I see the loading page
    When  I wait for the results to load
    Then  I see the results
