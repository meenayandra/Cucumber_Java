Feature: IDA

 
  As a user
  I want to be able to create Regular,Senior and Real ID cards in the system
  

  Background:
    Given user login with valid credentials
    
    @regression @IDA
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
    Then I assert the HeadQuarters Inquiry page footer contains Inquiry 
    When user types FirstName"<FirstName>" and MiddleName"<MiddleName>" and LastName"<LastName>"
    And user selects suffix"<suffix>"
    And user enters DOB"<dob>" and City"<city>" and State"<state>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Inquiry Response page footer contains InquiryResponse
    And I assert the FIRST NAME equals "<FirstName>" 
    And I assert the LAST NAME equals "<LastName>" 
    And I assert the BIRTHDATE equals "<dob>" 
    When user types action"<action>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the CDLIS-PDPS Inquiry page footer contains CdlisPdpsInquiry
    When user types SSN "<ssn>"
    When user enters SSN Verification "<ssnverif>"
    And user types Gender "<gender>" and Hair color "<hair>" and Eye color "<eye>"
    And user types Height in "<feet>" and  in "<inches>" and weight "<weight>"
    And user waits for 300 milliseconds 
    And user clicks the ENTER
    And user waits for 1500 milliseconds     
    Then I assert the SSN Inquiry Response page footer contains SsnInquiryResponse
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Collect Application Information page footer contains CollectApplicationInfo
    When user types Application barcode "<barcode>"
    When user types BD-LP Code "<bdlpcode>"     
    And user selects Organ Donor Veteran Code as "<organVetCode>"
    And user clicks the ENTER
    And user waits for 1000 milliseconds     
    Then I assert the Collect Address page footer contains CollectAddress
    When user types POBox "<Street>"
    And user enters CITY "<city>" and State "<state>" and zip "<zip>"
    And user clicks ResidencyVerification box
    And user clicks the ENTER
    And user waits for 1000 milliseconds     
    Then I assert the Enter Payment page footer contains EnterPayment
    When user enters amount "<amount>" 
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Id Print Request page footer contains IdPrintRequest
    And user clicks the ENTER
    And user waits for 1000 milliseconds 
    Then I assert the Review Documents page footer contains ReviewDocuments                       
    And user clicks the ENTER 
Examples:
    |ttc|wdate    |FirstName|MiddleName|LastName|suffix|dob     |city      |state|action|ssn      |ssnverif|gender|hair|eye|feet|inches|weight|barcode|bdlpcode|organVetCode|zip  |Street      |amount|
    |IDS|11152019|IDSNR     |AUTU      |TESTER  |SR    |07031950|Sacramento|CA   |P     |320329322|D       |M     |BLK |GRY|5   |10    |145   |Z      |A       |N           |95818|2415 1ST AVE|      |
    
