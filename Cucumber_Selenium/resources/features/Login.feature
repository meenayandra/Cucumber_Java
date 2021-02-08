Feature: Login

   @regression @login
  Scenario Outline: Successful Login with Valid Credentials
    Given User is on landing page 
     When User logs in using username as "<uname>" and password as "<pwd>"
    Then login should be successful for user "<uname>"
    When User presses Sign Out button
    Then logout should be successful
    		 
    Examples: 
      | uname    | pwd      |
      | MWSXT9	 | Test6565 |  
     