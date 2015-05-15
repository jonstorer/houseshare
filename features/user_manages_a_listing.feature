Feature: Visitor becomes a user by authing with facebook

  Scenario: User authenticates with Facebook
    Given I am logged in
    And I follow "Listings"
    And I follow "New"
    When I enter "My NYC Apartment" within the name for a listing field
    And I enter "The fort greet apartment" with the description for a listing field
