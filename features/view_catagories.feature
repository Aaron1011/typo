Feature: View Catagories
  As a blog administrator
  In order to see how my articles are catagorized
  I want to be able to view the catagories I have created

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully view catagories
    Given I have created the following catagories:
      | Linux | linux | linux | Articles related to Linux |
      | How-To | how-to | howto | How-To articles |
    And I am on the catagories page
    Then I should see "Linux"
    And I should see "How-to" 
       
