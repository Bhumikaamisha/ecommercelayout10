Feature:Open cart Register

  @register
  Scenario:user is able to register with valid crendentials
    Given user should be on open cart home page
    When user clicks on "Login" link
    And user clicks on "Create an account" button
    And user enters the firstname "Sandy" lastname "kopelli"  email "abcd@gmail.com" telephone "12345677891" password "abcdef" password confirm "abcdef"
    And user selects no radiobutton
    And user clicks on continue button
    Then user can successfully register with message  "your account has beed registered"


  @Notregister
  Scenario Outline: User is not able to register successfully
    Given user is in opencart homepage
    When user clicks on "Login" link
    And clicks on "Create an account"  button
    And user fills the data in the create account form as "<Firstname>" "<Last name>"  "<Email>" "<Telephone>" "<password>" "<confirmpassword>"
    And  user selects no radiobutton
    And  user clicks on continue botton
    Then user should land on the page with "<error message>"
    Examples:
      | Firstname | Last name | Email            | Telephone  | password | confirmpassword | error message                                   |
      |           | kopelli   | abcdef@gmail.com | 1234567891 | abcdef   | abcdef          | First Name must be between 1 and 32 characters! |
      | Sandy     |           | abcdef@gmail.com | 1234567891 | abcdef   | abcdef          | Last Name must be between 1 and 32 characters!  |
      | Sandy     | kopelli   |                  | 1234567891 | abcdef   | abcdef          | E-Mail Address does not appear to be valid!     |
      | Sandy     | kopelli   | abcdef@gmail.com |            | abcdef   | abcdef          | Telephone must be between 3 and 32 characters!  |






