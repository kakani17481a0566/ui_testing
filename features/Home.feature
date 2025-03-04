@home
Feature: The Home Page



  @visit_r20
  Scenario: I visit the r20 page
    Given I visit the r20 page
    When I wait for 3 seconds


  @page_title
  Scenario: The page title should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "Home_page_header" should contain the text "SRGEC INTERNAL MARKS CALCULATOR"

  @button-text-verification
  Scenario: Verify Button Texts on Home Page
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "Home" should contain the text "Home"
    Then the element located by "R20_button" should contain the text "R20"
    Then the element located by "R23_button" should contain the text "R23"
    Then the element located by "MBA_button" should contain the text "MBA"
    Then the button located by "MBA_button" should be enabled
    Then the button located by "R23_button" should be enabled
    Then the button located by "R20_button" should be enabled


  @r20_page_title
  Scenario:  Verify the page title of R20 page
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "Home" should contain the text "Home"
    Then I click on the element located by "R20_button"
    Then the element located by "PAGE_TITLE" should contain the text "SRGEC R20 BATCH INTERNAL MARKS CALCULATOR"
    When I wait for 3 seconds

  @R23_button
  Scenario:  Verify the page title of R23 page
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "R23_button" should contain the text "R23"
    Then I click on the element located by "R23_button"
    Then the element located by "R23_PAGE_HEADER" should contain the text "SRGEC R23 BATCH INTERNAL MARKS CALCULATOR"
    When I wait for 3 seconds









