Feature:checking the login functionality

  @login1
    Scenario: Verify user is able to  Login successfully
    Given user is in opencart homepage
    When user enters email address "abcd@gmail.com" and password "abcdef"
    And clicks on Login button
    Then User should able to login successfully

    @Notlogin
    Scenario Outline: Verify user is not able to register with invalid details
      Given user is in homepage
      When user clicks on "Login"  button
      And user enters "<Email address>" and "<Password>"
      And clicks on Login button
      Then user is not able to register with the "<Error message>"
      Examples:
        | Email address  | Password | Error message                               |
        |                | abcdef   | No match for E-Mail Address and/or Password |
        | abcd@gnail.com |          | No match for E-Mail Address and/or Password |
        |                |          | No match for E-Mail Address and/or Password |

@login2
      Scenario: verifying  forgot the password functionality working as per expected
        Given user is in login page
        When user clicks on Forgot your password
        And enters the email address
        And clicks on continue
        Then user is able to land on a page with message "password reset link e-mailed to you"







