Feature: ATM Withdrawal scenario outline

  I should be able to withdraw money from ATM

  Scenario Outline: I should be able to withdraw money.
    Given I have <AccountBalance> PLN in my account
    When I reqest <RequestedAmount> PLN
    Then <DispensedAmount> PLN should be dispensed

    Examples: Positive balance
      | AccountBalance | RequestedAmount | DispensedAmount |
      | 100            | 20              | 20              |
      | 100            | 100             | 100             |
      | 0              | 10              | 0               |