Feature: Manage Articles
  In order to make a blog
  As an author
  I want to create and manage articles

  Scenario: Articles List
    Given I have articles titled RSpec, Capybara
    When I go to the list of articles
    Then I should see "RSpec"
    And I should see "Capybara"

  Scenario: Create Valid Article
    Given I am logged in as "suman.panda@mindfiresolutions.com" with password "password"
    And I have no articles
    Then I am on the list of articles
    When I follow "New Article"
    And I fill in "Title" with "Spuds"
    And I fill in "Body" with "Delicious potato wedges!"
    And I press "Create"
    Then I should see "New article created."
    And I should see "Spuds"
    And I should see "Delicious potato wedges!"
    And I should have 1 article
