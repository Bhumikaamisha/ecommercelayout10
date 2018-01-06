Feature:checking the language functionality working as per expexted
  Background: user is in homepage

  @language1
  Scenario:verify the language menu item elements are displayed as per the design
    When user mouse hovers on the language menu list
    Then user is able to view the display of the elements as designed

  @language2
  Scenario Outline:verify the change in language when selected accordingly
    When user mouse hovers on the Euro menu list
    And clicks on any "<language>"
    Then the user is able to view the page in that particular language
    Examples:
      | language |
      | English  |
      | Arabic   |


