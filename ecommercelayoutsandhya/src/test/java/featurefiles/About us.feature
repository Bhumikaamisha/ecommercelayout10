Feature:Navigate to About us page
  Background: User is in homepage

    @aboutus1
  Scenario: Verifying user is able to view About us page
    When user mousehover on pages
    And clicks on About us link
    Then user should land on the page with message "Welcome To Shop"

      @aboutus2
      Scenario: Verifying user is able to view About us page
        When user clicks on About us link
        Then user should land on the page with message "Welcome To Shop"

