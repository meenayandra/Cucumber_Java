Feature: 20M

 
  As a user
  I want to do a 20M transaction


  Background:
    Given user login with valid credentials
    
    @regression@20M
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
    And user waits for 1500 milliseconds 
    When user types Application Type Code1 "<applicationTypeCode1>"
    When user types Full Name"<fullName>" 
    When user types Mail Address "<mailingAddress>" 
    When user types Mail City Code "<mailCityCode>"
    When user types School License Number "<employerLicenseNumber>" 
    When user types School Name "<schoolName>"
    When user types School Address "<schoolAddress>" 
    When user types School City Code "<cityCode>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Enter Payment page footer contains EnterPayment
    When user enters amount "<amount>" 
    And user clicks the ENTER
    And user waits for 1000 milliseconds
    Then I assert the Review Documents page footer contains ReviewDocuments                       
    And user clicks the ENTER 
    
Examples:
    |ttc|wdate    |applicationTypeCode1|fullName       |mailingAddress|mailCityCode|employerLicenseNumber|schoolName                 |schoolAddress|cityCode|amount|
    |20M|11152019 |1                   |SPEEDY GONZALES|2415 1ST AVE  |SA          |1111                 |LOONEY TUNES DRIVING SCHOOL|2570 24TH ST |SA      |31    |
    
