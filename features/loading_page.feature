Feature: loading page

  Scenario: showing the loading page
    Given there is a referendum in the database
    When  I visit the loading page
    Then  there is a result in the database
