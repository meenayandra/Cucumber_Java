Feature: 14M

 
  As a user
  I want to do a 14M transaction
. 

  

  Background:
    Given user login with valid credentials
    
    @regression@14M
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
    When user types Penalty Fee Type 1 "<PenaltyFeeTypeCodes1>"
    When user types Penalty Fee Type 2 "<PenaltyFeeTypeCodes2>"
    When user types Penalty Fee Type 3 "<PenaltyFeeTypeCodes3>"
    When user types Penalty Fee Type 4 "<PenaltyFeeTypeCodes4>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Inquiry Response page footer contains InquiryResponse
    When user types Authorized ID "<authorizingUserId>"
    When user types Authorized Password "<authorizingPassword>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Enter Payment page footer contains EnterPayment
    When user enters amount "<amount>" 
    And user clicks the ENTER
    And user waits for 1000 milliseconds
    Then I assert the Review Documents page footer contains ReviewDocuments                       
    And user clicks the ENTER 
Examples:
    |ttc|wdate    |dlOrIdNumber   |pos   |PenaltyFeeTypeCodes1|PenaltyFeeTypeCodes2|PenaltyFeeTypeCodes3|PenaltyFeeTypeCodes4|authorizingUserId|authorizingPassword|amount|
    |14M|11152019 |I0004717       |MON   |E                   |F                   |S                   |T                   |mwsxh3           |Test0518           |250   |
    
