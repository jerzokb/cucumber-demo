Feature: ATM Withdrawal 10 test cases - home work

  I should test the ability to withdraw money from ATM

  Scenario Outline: I should be able to withdraw money up to my account balance
    Given I have <StartingAccountBalance> PLN on my account
    When I requested <RequestedAmount> PLN
    Then <DispensedAmount>0 PLN should be dispensed
    And <EndingAccountBalance> PLN should stay on my account

    Examples: Amounts
    |StartingAccountBalance|RequestedAmount|DispensedAmount|EndingAccountBalance|
    |100                   |20             |20             |80                  |
    |100                   |100            |100            |0                   |
    |80                    |100            |0              |80                  |
    |0                     |20             |0              |0                   |

  Scenario Template: I should be able to withdraw money up to my account balance when my account is not locked
    Given I have my account <AccountStatus>
    And my account balance is <AccountBalance>
    When I requested <RequestedAmount> PLN
    Then Than it was <RequestStatus> to withdraw money

    Scenarios: Statuses
      |AccountStatus|AccountBalance|RequestedAmount|RequestStatus|
      |Locked       |100|50             |not possible |
      |Open         |100|50             |possible     |
      |Open         |50 |100            |not possible |

  Background: I have positive balance
    Given I have 100 PLN in my account

    Scenario: I should be able to withdraw all money
      When I requested 100 PLN
      Then 100 PLN should be dispensed

  Scenario: I should be able to withdraw all money
    When I requested 50 PLN
    * I requested 20 PLN
    * I requested 20 PLN
    * I requested 10 PLN
    Then 100 PLN should be dispensed

  Scenario: I should be able to withdraw money when I entered correct PIN
    When I entered correct PIN
    And requested 20 PLN
    And my account is positive
    Then 20 PLN should be dispensed

  Scenario: I should be able to withdraw money when I entered correct PIN
    When I entered incorrect PIN
    Then I'm not able to withdraw money

  Scenario: I should be able to withdraw money when I entered correct PIN
    When I entered incorrect PIN three times
    Then My card is kept