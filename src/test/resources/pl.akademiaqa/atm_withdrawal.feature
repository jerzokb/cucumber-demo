Feature: ATM Withdrawal

  I should be able to withdraw money from ATM

  Background: I have positive balance
    Given I have 100 PLN in my account
#    Oczyszczenie scenariuszy z kroków, które się powtarzają

  Scenario: I have positive balance so I should be able to withdraw money.
    When I request 20 PLM
    Then 20 PLN should be dispensed
    And 80 PLN should stay on my account

  Scenario: I should be able to withdraw all money
    When I reqest 100 PLN
    Then 100 PLN should be dispensed

  Scenario: I should be able to withdraw all money
    * I have 100 PLN in my account
    * I request 20 PLM
    * 20 PLN should be dispensed

  Rule: Locked account
#      Wymaganie biznesowe

    Scenario: I should be able to withdraw all money
      When I request 20 PLM
      * I request 20 PLM
      Then 40 PLN should be dispensed

    Scenario: : I have positive balance
      Given I have 100 PLN in my account
      But My account is locked
      When I request 20 PLM
      Then 20 PLN should not be dispensed
      And 100 PLN should stay on my account

    Scenario Outline: I should be able to withdraw money.
      Given I have <AccountBalance> PLN in my account
      When I reqest <RequestedAmount> PLN
      Then <DispensedAmount> PLN should be dispensed

      Examples: Positive balance
        | AccountBalance | RequestedAmount | DispensedAmount |
        | 100            | 20              | 20              |
        | 100            | 100             | 100             |
        | 0              | 10              | 0               |

    Scenario Template: I should be able to withdraw money.
      Given I have <AccountBalance> PLN in my account
      When I reqest <RequestedAmount> PLN
      Then <DispensedAmount> PLN should be dispensed

      Scenarios: Account balance
        | AccountBalance | RequestedAmount | DispensedAmount |
        | 100            | 20              | 20              |
        | 100            | 100             | 100             |
        | 0              | 10              | 0               |

