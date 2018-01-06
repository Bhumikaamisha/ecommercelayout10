Feature:checking the signup newsletter functionality
  @signnewletter
  Scenario: verifying the user is able to signup newletter successfully
    Given user is in opencart homepage
    When user enters valid email address
    And clicks on Subscribe button
    Then user is able to subscribe successfuly


  @notsignnewletter
  Scenario: verifying the user is not  able to signup newletter successfully
    Given user is in opencart homepage
    When user enters invalid email address
    And clicks on Subscribe button
    Then user is  not able to subscribe successfuly


