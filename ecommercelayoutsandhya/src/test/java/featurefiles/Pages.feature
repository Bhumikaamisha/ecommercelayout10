Feature:Checking the pages menu functionality working as per expected
Background: user is in homepage

  @pages1
    Scenario: verify the elements in the menu item of pages are displayed as per the design
    When user mouse hovers on pages
    Then user is able to view the elements as per the design


 @pages2
 Scenario: Verify  user is able to navigate to services in pages link
  When user mouse hovers on pages link
  And  clicks on Services link
  Then user is navigated to Services page

 @pages3
 Scenario: Verify user is able to navigate to FAQs in pages link
  When user mouse hovers on pages link
  And user clicks on FAQs link
  Then user is navigated to FAQs page

 @pages4
 Scenario: Verify user is able to navigate to Contact us link
  When user mouse hovers on pages link
  And user clicks on Contact us link
  Then user is navigated to Contact us page


  @pages5
  Scenario: Verify user is able to submit a contact form
    When user mouse hovers on pages link
    And user clicks on Contact us link
    And fills in your name "Sandy" Email address "abcd@gmail.com" Enquiry "qwertyuiopasdf"
    And clicks on submit button
    Then user is able to land on the page with message "Your enquiry has been successfully sent to the store owner!"

  @pages6
  Scenario Outline: Verify user is not able to submit a contact form with invalid details
    When user mouse hovers on pages link
    And user clicks on Contact us link
    And filLs in "<your name>" "<Email address>" "<Enquiry>"
    And clicks on submit button
    Then user is able to land on the page with message "<error message>"
    Examples:
      | your name | Email address  | Enquiry        | error message                                  |
      |           | abcd@gmail.com | qwertyuiopasdf | Name must be between 3 and 32 characters!      |
      | Sandy     |                | qwertyuiopasdf | E-Mail Address does not appear to be valid!    |
      |           | abcd@gmail.com |                | Enquiry must be between 10 and 3000 characters |
      |           | abcd@gmail.com | qwe            | Enquiry must be between 10 and 3000 characters |



  @pages5
 Scenario: Verify user is able to navigate to Support 24/7 page link
    When user mouse hovers on page link
    And clicks  on Support 24/7 page link
  Then user is able to  navigate to Support 24/7 page


  @pages6
  Scenario: Verify user is able to navigate to Typography link
  When  user mouse hovers on page link
  And clicks on Typography link
  Then user able to  navigate to Typography page


  @pages7
   Scenario: Verify user is able to navigate to Photo Gallery
   When user mouse hovers on page link
   And user clicks on Photo Gallery link
  Then user is  able to navigate to Photo Gallery page

  @pages8
  Scenario: Verify user is able to navigate to SiteMap
  When user mouse hovers on page link
  And user clicks on SiteMap link
  Then user is able to navigate to SiteMap page

  @pages9
  Scenario: Verify pages link-Page 404
  When user mouse hovers on page link
   And user clicks on Page 404 link
  Then user is able to navigate to Page 404 page


  @pages10
   Scenario: Verify pages link-Coming Soon
  When user mouse hovers on page link
  And  user clicks on Coming Soon link
  Then user is able to navigate to Coming Soon page