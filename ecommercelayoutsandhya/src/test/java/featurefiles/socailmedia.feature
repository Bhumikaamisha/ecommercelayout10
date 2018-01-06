Feature:checking the social media links working as per expected

  Scenario Outline: verify user is able to click all the social media links
    Given user is in opencart hompeage
    When user clicks on socailmedia link "<link>"
    Then user is able to land on the respected page "<page>"
    Examples:
      | link      | page        |
      | f         | facebook    |
      | twitter   | SmartAddons |
      | G+        | Google+     |
      | Pinterest | Pinterest   |

