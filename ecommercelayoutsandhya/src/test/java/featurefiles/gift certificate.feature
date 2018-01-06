Feature: checking the gift certificate functionality working as per expected
  Background: user is in homepage

  @giftcertificate1
  Scenario: verify the user is able to purchase a gift certificate
    When user clicks on Gift Certificates
    And fills in Recipient's Name "xyz" Recipient's e-mail "qwert@yahoo.com" Your Name "sandy" Your e-mail "abcd@yahoo.com"
    And select  any  option from Gift Certificate and Theme
    And type in Amount
    And click on continue button
    And check the tick box
    Then user is able to successfully purchase a gift certificate

  @giftcertificate2
    Scenario Outline: verify the user is not able to purchase a gift certificate when invalid data is entered
      When user clicks on Gift Certificates
      And fills in "<Recipient's Name>" "<Recipient's e-mail>" "<Your Name>" "<Your e-mail>"
      And select  any  option from  "<Theme>"
      And type in "<Amount>"
      And click on continue button
      And check the "<tick box>"
      Then user is not able to purchase a gift certificate and land on the page with "<message>"
      Examples:
        | Recipient's Name | Recipient's e-mail | Your Name | Your e-mail    | Theme     | Amount | tick box | message                                                                |
        |                  | qwert@yahoo.com    | sandy     | abcd@yahoo.com | General   | 1      | select   | Recipient's Name must be between 1 and 64 characters!                  |
        | xyz              |                    | sandy     | abcd@yahoo.com | Birthday  | 1      | select   | E-Mail Address does not appear to be valid!                            |
        | xyz              | qwert@yahoo.com    |           | abcd@yahoo.com | Christmas | 1      | select   | Your Name must be between 1 and 64 characters!                         |
        | xyz              | qwert@yahoo.com    | sandy     |                | General   | 1      | select   | E-Mail Address does not appear to be valid!                            |
        | xyz              | qwert@yahoo.com    | sandy     | abcd@yahoo.com |           | 1      | select   | You must select a theme!                                               |
        | xyz              | qwert@yahoo.com    | sandy     | abcd@yahoo.com | Birthday  | 1      |          | Warning: You must agree that the gift certificates are non-refundable! |
