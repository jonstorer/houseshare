Feature: Visitor becomes a user by authing with facebook

  Scenario: User authenticates with Facebook
    Given I am logged into facebook as:
      | first name |
      | Jonathon   |
    And I am on the homepage
    When I follow "Login"
    Then I should see "Jonathon" within the header
    When I follow "Logout"
    Then I should not see "Jonathon" within the header
    And I should see "Login" within the header
