Feature:checking the currency of any specific country working as oer expected
  Background: user is in homepage

    @currency1
    Scenario:verify the currency menu item elements are displayed as per  expected
      When user mouse hovers on the Euro menu list
      Then user is able to view the display of the elements as designed

      @currency2

      Scenario Outline:verify the change in price and symbol when change in currency
        When user mouse hovers on the Euro menu list
         And clicks on any "<currency>"
        Then the price and symbol "<change>" changes accordingly
        Examples:
          | currency  | change |
          | Euro      |        |
          | pound     | £      |
          | US Dollar | $      |



