Feature: Home page

  Scenario: Viewing application's home page
    Given there's a question title "How to write good commit messages"
    When I am on the homepage
    Then I should see the "How to write good commit messages" question
