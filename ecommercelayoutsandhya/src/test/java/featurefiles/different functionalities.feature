Feature:Checking the different functionalites in homepage working as per expected
  Background: user is in homepage

  @different1
  Scenario:verfiying the user is able to view support 24/7 page
    When user clicks on Support 24/7 page
    Then user should land on the page with message "HAVE A QUESTION?"

@different2
    Scenario: verifying user is able to create a  Affiliate Account
      When user clicks on Affilates link
      And clicks on continue button
      And fills in First Name "xyz"  Last Name "abc" E-Mail "qwe@gmail.com"  Telephone "1234567891"  Cheque Payee Name "xyz" Password "qwert" Password Confirm "qwert"
      And ticks the checkbox
      And clicks on continue button
      Then user is able to land on the page with message "Your Affiliate Account has beed created"

  @different3
      Scenario: verifying user is  not able to create a  Affiliate Account with invalid details
        When user clicks on Affilates link
        And clicks on continue button
        And fills in First Name "xyz"  Last Name "abc" E-Mail "qwe@gmail.com"  Telephone "1234567891"  Cheque Payee Name "xyz" Password "qwert" Password Confirm "qwert"
        And clicks on continue button
        Then user is not able to create an affiliated account and "Warning: You must agree to the About Us!" meeage should be displayed


@different4
        Scenario Outline: verifying user is  not able to create a  Affiliate Account with invalid details
          When user clicks on Affilates link
          And clicks on continue button
          And fills "<First Name>" "<Last Name>" "<E-Mail>" "<Telephone>" "<Cheque Payee Name>" "<Password>" "<Password Confirm>"
          And ticks the checkbox
          And clicks on continue button
          Then user is not able to create an affiliated account with message "<message>"

          Examples:
            | First Name | Last Name | E-Mail        | Telephone  | Cheque Payee Name | Password | Password Confirm | message                                               |
            |            | abc       | qwe@gmail.com | 1234567891 | xyz               | qwert    | qwert            | First Name must be between 1 and 32 characters!       |
            | xyz        |           | qwe@gmail.com | 1234567891 | xyz               | qwert    | qwert            | Last Name must be between 1 and 32 characters!        |
            | xyz        | abc       |               | 1234567891 | xyz               | qwert    | qwert            | E-Mail Address does not appear to be valid!           |
            | xyz        |           | qwe@gmail.com |            | xyz               | qwert    | qwert            | Telephone must be between 3 and 32 characters!        |
            | xyz        |           | qwe@gmail.com | 1234567891 | xyz               |          | qwert            | Password must be between 4 and 20 characters!         |
            | xyz        |           | qwe@gmail.com | 1234567891 | xyz               | qwert    |                  | confirm Password must be between 4 and 20 characters! |
            | xyz        |           | qwe@gmail.com | 1234567891 |                   | qwert    | qwert            | Cheque Payee Name required!                           |

