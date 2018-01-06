Feature:Checking the search functionality working as expected
  @Search
  Scenario: User is able to search an item with valid data
    Given user is in homepage
    When user types in valid data in the search box "furniture"
    And clicks on "search" link
    Then user should  land on the page with text "Products meeting the search criteria"


  @Notvalidsearch
  Scenario: User is not able to search with invalid data
    Given user is in homepage
    When user types in invalid data in the search box as "qweerty"
    And clicks on "search" link
    Then user should view the message "There is no product that matches the search criteria"
