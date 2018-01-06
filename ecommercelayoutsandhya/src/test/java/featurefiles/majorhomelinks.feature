Feature: Check that homepage have all expected features



Feature: Checking all the homepage features
  @Home1
  Scenario Outline:User is able to view all the major links in the homepage
    Given user is in homepage
    Then user is able to view all the following links "<Link>"
    Examples:
      | Link       |
      | Home       |
      | checkout   |
      | Login      |
      | my account |
      | wishlist   |
      | Layouts    |
      | Shop       |
      | Blog       |
      | Features   |
      | Pages      |
      |checkout    |




