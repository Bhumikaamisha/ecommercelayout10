Feature:Checking the checkout functionality working as per expected
  As a login user
  I am able to checkout an item

  Background: user is in homepage
    @checkout1
    Scenario: Verifying user is able to add an item to the cart
      When user mousehover on shop men item
      And clicks on Qunge genga
      And clciks on Lastrami deserunt
      And select red colour
      And clicks on Add to cart button
      Then user is able to view a message " You have added Lastrami deserunt to your shopping cart"
      And user is able to view the number of items added with their price

@checkout2
      Scenario:Verify user is able to checkout the item added
        When user clicks on checkout option on the main menu bar
        And fills in Billing address first name "sandy" last name "kopelli" Address1 "qwertyyuio" city "qwert" postcode "DA144AA"
        And fill in the comments
        And click on confirm order button
        Then user is able to checkout successfully with a message "Your order has been placed!"
  @checkout3
  Scenario:verify user is able to checkout successfully
    When user mouse hovers on the basket
    And clicks on checkout button
    And fills in Billing address first name "sandy" last name "kopelli" Address1 "qwertyyuio" city "qwert" postcode "DA144AA"
    And fill in the comments
    And click on confirm order button
    Then user is able to checkout successfully with a message "Your order has been placed!"

    @checkout4
    Scenario Outline:verifying user is not able to checkout with invalid data
      When user clicks on checkout option on the main menu bar
      And fills in Billing address "<first name>" "<last name>" "<Address1>" "<city>" "<postcode>"
      And fill in the comments
      And click on confirm order button
      Then user is not able to checkout and a messahe is displayes "<error message>"
      Examples:
        | first name | last name | Address1   | city  | error message                                   |
        |            | kopelli   | qwertyyuio | qwert | First Name must be between 1 and 32 characters! |
        | sandy      |           | qwertyyuio | qwert | Last Name must be between 1and 32 characters!   |
        | sandy      | kopelli   |            | qwert | Address 1 must be between 3 and 128 characters! |
        | sandy      | kopelli   | qwertyyuio |       | City must be between 2 and 128 characters!      |


