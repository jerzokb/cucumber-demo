Feature: ATM Withdrawal from several accounts

  I should test the ability to withdraw money from ATM

  Background: I have positive balance
    Given I have positive balance on my accounts
      | account          | balance |
      | saving account   | 50      |
      | debit account    | 20      |
      | personal account | 30      |

  Scenario: I have positive balance so I should be able to withdraw money.
    When I request 20 PLN
    Then 20 PLN should be dispensed
    And 80 PLN should stay on my account

  @allMoney
  Scenario: I should be able to withdraw all money
    When I request 100 PLN
    And I send confirmation letter
    """
      Hello Sir,

      This is my confirmation letter.

      And this is very long text.
      This text can have multiple lines.

      And spaces
      ...

      ... and even more lines.
    """
    Then 100 PLN should be dispensed
    And 0 PLN should stay on my account