Feature: 12M

 
  As a user
  I want to do a 12M transaction
. 

  

  Background:
    Given user login with valid credentials
    
    @regression @06M
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
    When user types Consent Date "<consentDate>"
    When user types Number of Jail Days "<numberOfJailDays>"
    When user types Enrollment Date "<enrollmentDate>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Inquiry Response page footer contains InquiryResponse
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Enter Payment page footer contains EnterPayment
    When user enters amount "<amount>" 
    And user clicks the ENTER
    And user waits for 1000 milliseconds
    Then I assert the Review Documents page footer contains ReviewDocuments                       
    And user clicks the ENTER 
Examples:
    |ttc|wdate    |dlOrIdNumber   |pos   |consentDate|numberOfJailDays|enrollmentDate|amount|
    |12M|11152019 |I7401029       |COM   |11052013   |4               |11122013      |15    |
    
