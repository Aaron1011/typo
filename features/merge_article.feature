Feature: Merge Articles
  As a blog administrator
  I want to be able to merge articles on my blog

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge articles
    Given I am not logged in as an administrator
    Then I should not see "Merge"

  Scenario: When two articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    And I have created some articles
    And I am on the edit page for article 1
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should see "Lorem Ipsum Hello World"
