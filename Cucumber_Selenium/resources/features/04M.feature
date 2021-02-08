Feature: 04M

 
  As a user
  I want to be able to collect $55 reissue fee due for a noncommercial C applicant. 

  

  Background:
    Given user login with valid credentials
    
    @regression @04M
  Scenario Outline: Create Valid ID 
    When user waits for 500 milliseconds
    When user clicks on EASE APPLICATION LINK
    When user waits for 1000 milliseconds
    Then ModeSelection page displays
    When user waits for 1000 milliseconds
    Then I assert the Mode Selection page footer contains ModeSelection 
    When user clicks ENTER on ModeSelection Page 
    When user waits for 1000 milliseconds  
    Then I assert the Select DL page footer contains SelectDlTransaction
    When user types TTC "<ttc>" on SelectDlTransaction page
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Miscellaneous Payment page footer contains MiscellaneousPayment 
    When user types DLNumber "<dlOrIdNumber>" 
    When user types POS Name"<pos>" 
    When user types Date Fee Paid"<dateFeePaid>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Enter Payment page footer contains EnterPayment
    When user enters amount "<amount>" 
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Review Documents page footer contains ReviewDocuments                       
    And user clicks the ENTER 
Examples:
    |ttc|wdate    |dlOrIdNumber   |pos   |dateFeePaid|amount|
    |04M|11152019 |I7401034       |DEN   |05072018   |55    |
    
