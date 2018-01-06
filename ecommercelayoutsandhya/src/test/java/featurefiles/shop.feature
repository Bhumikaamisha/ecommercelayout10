Feature: checking the SHOP menu items working as per expected
  Background: user is in homepage

  @layout1
  Scenario: verify the elements in the menu item of SHOP are displayed as per the design
    When user mouse hovers on pages
    Then user is able to view the elements as per the design

  @layout2
  Scenario Outline: verifying user is able to navigate to different menu items
    When user mousehover on shop link
    And clicks on any shop link "<Shop link>"
    Then user is able to land on that particular page
    Examples:
      | Shop link    |
      | Smartphone   |
      | Electronics  |
      | Towels cloud |
      | Collections  |

