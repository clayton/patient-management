Feature: Managing Owners
  In order to manage our client list
  As an employee
  I want to be able to CRUD owners

  Scenario: Creating a new Owner
    Given I am on the homepage
    And I follow "Owners"
    Then I should be on the owners index page
    Given I follow "New owner"
    And I fill in "Name" with "Clayton"
    And I fill in "E-Mail" with "clayton@example.org"
    And I fill in "Address" with "100 Cactus Rd"
    And I fill in "City" with "Scottsdale"
    And I fill in "State" with "Arizona"
    And I fill in "Postal Code" with "85000"
    And I fill in "Phone" with "480-555-1212"
    When I press "Create"
    Then I should see "Owner was successfully created."
    And I should be on the owners index page


  Scenario: Editing an existing Owner
    Given the following owners:
     | name    | email               | address       |
     | Clayton | clayton@example.org | 100 Cactus Rd |
    Given I am on the homepage
    And I follow "Owners"
    Then I should be on the owners index page
    When I follow "Edit"
    And I fill in "Address" with "567 N Scottsdale Rd"
    When I press "Update"
    Then I should see "Owner was successfully updated."
    And I should be on the owners index page