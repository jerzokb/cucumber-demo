Feature: ATM Withdrawal single scenario

  I should test the ability to withdraw money from ATM

  Background: I have positive balance
    Given I have 100 PLN in my account
    And My name is "Beata"
    And I have 1.6 EUR

  Scenario: I have positive balance so I should be able to withdraw money.
    When I request 20 PLN
    Then 20 PLN should be dispensed
    And 80 PLN should stay on my account

  Scenario: I should be able to withdraw all money
    When I request 100 PLN
    Then 100 PLN should be dispensed
    And 0 PLN should stay on my account