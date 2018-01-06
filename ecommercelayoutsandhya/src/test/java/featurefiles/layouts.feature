Feature: checking the layout links working as per expected
  Background: user is in homepage

    @layout1
    Scenario: verify the elements in the menu item of Layouts are displayed as per the design
      When user mouse hovers on pages
      Then user is able to view the elements as per the design

  @layout2
  Scenario Outline: verfying user is able to navigate to different layouts
    When user mousehover on pages
    And selects any layout link "<layout links>"
    Then user is able to land on that particular page
    Examples:
      | layout links      |
      | HOME LAYOUT 1     |
      | HOME LAYOUT 2     |
      | HOME LAYOUT 3     |
      | HOME LAYOUT 4     |
      | HOME LAYOUT 5     |
      | HOME LAYOUT 6     |
      | HOME LAYOUT 7     |
      | HOME LAYOUT 8     |
      | HOME LAYOUT 9     |
      | HOME LAYOUT 10    |
      | HOME PAGE - BOXED |
      | HOME PAGE - RTL   |


