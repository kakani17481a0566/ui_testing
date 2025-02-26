@global
Feature: The Internet Guinea Pig Website



  @visit_r20
  Scenario: I visit the r20 page
    Given I visit the r20 page
    When I wait for 3 seconds


  @page_title
  Scenario: The page title should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "PAGE_TITLE" should contain the text "SRGEC R20 BATCH INTERNAL MARKS CALCULATOR"


  @mid1_headers
  Scenario: The MID 1 headers should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "MID1_HEADER" should contain the text "MID 1"
    Then the element located by "MID1_OBJ_LABEL" should contain the text "Obj 1:"
    Then the element located by "MID1_DES_LABEL" should contain the text "Des 1:"
    Then the element located by "MID1_ASSIGN_LABEL" should contain the text "Assign 1:"
    Then I should take a screenshot


  @mid2_headers
  Scenario: The MID 2 headers should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "MID2_HEADER" should contain the text "MID 2"
    Then the element located by "MID2_OBJ_LABEL" should contain the text "Obj 2:"
    Then the element located by "MID2_DES_LABEL" should contain the text "Des 2:"
    Then the element located by "MID2_ASSIGN_LABEL" should contain the text "Assign 2:"


  @buttons_mid1_obj
  Scenario: The MID 1 Objective input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "5" to the element located by "MID1_OBJ_INPUT1"

  @buttons_mid2_obj
  Scenario: The MID 2 Objective input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "5" to the element located by "MID2_OBJ_INPUT2"


  @buttons_mid1_des
  Scenario: The MID 1 Descriptive input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "5" to the element located by "MID1_DES_INPUT1"


  @buttons_mid2_des
  Scenario: The MID 2 Descriptive input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "5" to the element located by "MID2_DES_INPUT2"


  @buttons_mid1_assign
  Scenario: The MID 1 Assignment input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "5" to the element located by "MID1_ASSIGN_INPUT1"


  @buttons_mid2_assign
  Scenario: The MID 2 Assignment input field should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "5" to the element located by "MID2_ASSIGN_INPUT2"


  @buttons_calculate
  Scenario: The Calculate button should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I click on the element located by "CALCULATE_BUTTON"
    When I wait for 5 seconds


  @buttons_reset
  Scenario: The Reset button should be correct
    Given I visit the r20 page
    When I wait for 3 seconds
    Then the element located by "RESET_BUTTON" should contain the text "Reset"
    Then I click on the element located by "RESET_BUTTON"
    When I wait for 5 seconds

  @buttons_all
  Scenario: All buttons and input fields should be correct
    Given I visit the r20 page
    When I wait for 5 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "5" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "5" to the element located by "MID2_OBJ_INPUT2"

    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "5" to the element located by "MID1_DES_INPUT1"

    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "5" to the element located by "MID2_DES_INPUT2"

    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "5" to the element located by "MID1_ASSIGN_INPUT1"

    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "5" to the element located by "MID2_ASSIGN_INPUT2"

    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I should take a screenshot
    Then I click on the element located by "CALCULATE_BUTTON"

    Then I should take a screenshot
    When I wait for 5 seconds

  @buttons_all_correct
  Scenario: All buttons and input fields should display correct values
    Given I visit the r20 page
    When I wait for 5 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "5" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "5" to the element located by "MID2_OBJ_INPUT2"

    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "5" to the element located by "MID1_DES_INPUT1"

    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "5" to the element located by "MID2_DES_INPUT2"

    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "5" to the element located by "MID1_ASSIGN_INPUT1"

    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "5" to the element located by "MID2_ASSIGN_INPUT2"

    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I should take a screenshot
    Then I click on the element located by "CALCULATE_BUTTON"
    When I wait for 5 seconds
    Then I click on the element located by "OBJ_LABEL"
    Then the element located by "OBJ_LABEL" should contain the text "OBJ"
    Then the element located by "DES_LABEL" should contain the text "DES"

    Then the element located by "ASSIGN_LABEL" should contain the text "ASSIGN"


    Then the element located by "SUM_LABEL" should contain the text "SUM OF OBJ + DES + Assign"
    Then the element located by "BEST_MID_LABEL" should contain the text "Best MID"
    Then the element located by "LEAST_MID_LABEL" should contain the text "Least MID"
    Then the element located by "MID80_LABEL" should contain the text "80% of Best MID"
    Then the element located by "MID20_LABEL" should contain the text "20% of Least MID"
    Then the element located by "FINAL_INTERNAL_MARKS_LABEL" should contain the text "Final Internal Marks"
    Then the element located by "CEIL_FINAL_INTERNAL_MARKS_LABEL" should contain the text "Ceil Final Internal Marks"


  @buttons_all_combinations
  Scenario Outline: All buttons and input fields should be correct for all combinations
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "<MID1_OBJ>" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "<MID2_OBJ>" to the element located by "MID2_OBJ_INPUT2"
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "<MID1_DES>" to the element located by "MID1_DES_INPUT1"
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "<MID2_DES>" to the element located by "MID2_DES_INPUT2"
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "<MID1_ASSIGN>" to the element located by "MID1_ASSIGN_INPUT1"
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "<MID2_ASSIGN>" to the element located by "MID2_ASSIGN_INPUT2"
    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I click on the element located by "CALCULATE_BUTTON"
    Then I should take a screenshot
    When I wait for 5 seconds

    Examples:
      | MID1_OBJ | MID2_OBJ | MID1_DES | MID2_DES | MID1_ASSIGN | MID2_ASSIGN |
      | 0        | 0        | 0        | 0        | 0           | 0           |
      | 5        | 5        | 5        | 5        | 5           | 5           |
      | 10       | 10       | 10       | 10       | 5           | 5           |
      | 1        | 2        | 4        | 3        | 2           | 4           |
      | 3        | 7        | 2        | 8        | 3           | 1           |
      | 9        | 8        | 13       | 14       | 5           | 4           |
      | 6        | 6        | 12       | 14       | 4           | 3           |
      | 8        | 1        | 6        | 9        | 5           | 2           |
      | 0        | 10       | 0        | 15       | 0           | 5           |
      | 10       | 0        | 15       | 0        | 5           | 0           |
      | 5        | 5        | 10       | 10       | 3           | 3           |
      | 2        | 8        | 1        | 4        | 4           | 5           |

  @buttons_all_combinations_invalid
  Scenario Outline: All buttons and input fields should handle invalid inputs correctly
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "<MID1_OBJ>" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "<MID2_OBJ>" to the element located by "MID2_OBJ_INPUT2"
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "<MID1_DES>" to the element located by "MID1_DES_INPUT1"
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "<MID2_DES>" to the element located by "MID2_DES_INPUT2"
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "<MID1_ASSIGN>" to the element located by "MID1_ASSIGN_INPUT1"
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "<MID2_ASSIGN>" to the element located by "MID2_ASSIGN_INPUT2"
    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I click on the element located by "CALCULATE_BUTTON"
    Then I should take a screenshot
    When I wait for 5 seconds






    Examples:
      | MID1_OBJ | MID2_OBJ | MID1_DES | MID2_DES | MID1_ASSIGN | MID2_ASSIGN |
      | "abc"    | 5        | 0        | 10       | 3           | 4           |
      | -1       | 5        | 10       | 12       | 2           | 3           |
      | 5        | "xyz"    | 4        | 7        | 1           | 3           |
      | 10       | 15       | -1       | 12       | 4           | 6           |
      | 7        | 8        | 0        | 16       | "NaN"       | 5           |
      | 5        | 10       | 4        | "null"   | 5           | 7           |
      | -1       | 8        | 0        | 5        | 3           | 4           |
      | 11       | 10       | 15       | 14       | 0           | "error"     |

  @buttons_all_combinations_invalid_errors_1
  Scenario Outline: All buttons and input fields should display error messages for invalid inputs
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "<MID1_OBJ>" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "<MID2_OBJ>" to the element located by "MID2_OBJ_INPUT2"
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "<MID1_DES>" to the element located by "MID1_DES_INPUT1"
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "<MID2_DES>" to the element located by "MID2_DES_INPUT2"
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "<MID1_ASSIGN>" to the element located by "MID1_ASSIGN_INPUT1"
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "<MID2_ASSIGN>" to the element located by "MID2_ASSIGN_INPUT2"
    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I click on the element located by "CALCULATE_BUTTON"
    Then I should take a screenshot
    When I wait for 3 seconds

    Then I scroll until I find the element located by "CALCULATE_BUTTON"
    Then the button located by "CALCULATE_BUTTON" should be enabled

    Then the button located by "EXPORT_BUTTON" should be disabled
    When I wait for 3 seconds

    Then the element located by "OBJ1_ERROR" should contain the text "Obj 1 is out of range (0-10)."
    Then the element located by "DES1_ERROR" should contain the text "Des 1 is out of range (0-15)."
    Then the element located by "ASSIGN1_ERROR" should contain the text "Assign 1 is out of range (0-5)."
    Then the element located by "OBJ2_ERROR" should contain the text "Obj 2 is out of range (0-10)."
    When I wait for 3 seconds
    Then the element located by "DES2_ERROR" should contain the text "Des 2 is out of range (0-15)."
    Then the element located by "ASSIGN2_ERROR" should contain the text "Assign 2 is out of range (0-5)."





    Examples:
      | MID1_OBJ | MID2_OBJ | MID1_DES | MID2_DES | MID1_ASSIGN | MID2_ASSIGN |
      | -1       | -1       | -1       | -1       | -1          | -1          |

  @buttons_all_combinations_invalid_errors_2
  Scenario Outline: All buttons and input fields should display error messages for invalid inputs
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "<MID1_OBJ>" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "<MID2_OBJ>" to the element located by "MID2_OBJ_INPUT2"
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "<MID1_DES>" to the element located by "MID1_DES_INPUT1"
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "<MID2_DES>" to the element located by "MID2_DES_INPUT2"
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "<MID1_ASSIGN>" to the element located by "MID1_ASSIGN_INPUT1"
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "<MID2_ASSIGN>" to the element located by "MID2_ASSIGN_INPUT2"
    Then the element located by "CALCULATE_BUTTON" should contain the text "Calculate Internal Marks"
    Then I click on the element located by "CALCULATE_BUTTON"
    Then I should take a screenshot
    When I wait for 3 seconds

    Then the element located by "<ERROR_ELEMENT>" should contain the text "<ERROR_MESSAGE>"

    Then I scroll until I find the element located by "CALCULATE_BUTTON"
    Then the button located by "CALCULATE_BUTTON" should be enabled

    When I wait for 3 seconds


    Examples:
      | MID1_OBJ | MID2_OBJ | MID1_DES | MID2_DES | MID1_ASSIGN | MID2_ASSIGN | ERROR_ELEMENT | ERROR_MESSAGE                   |
      | -1       | 5        | 0        | 10       | 3           | 4           | OBJ1_ERROR    | Obj 1 is out of range (0-10).   |
      | 5        | -1       | 4        | 7        | 1           | 3           | OBJ2_ERROR    | Obj 2 is out of range (0-10).   |
      | 5        | 10       | -1       | 12       | 2           | 3           | DES1_ERROR    | Des 1 is out of range (0-15).   |
      | 5        | 10       | 4        | -1       | 1           | 3           | DES2_ERROR    | Des 2 is out of range (0-15).   |
      | 5        | 10       | 4        | 7        | -1          | 3           | ASSIGN1_ERROR | Assign 1 is out of range (0-5). |
      | 5        | 10       | 4        | 7        | 1           | -1          | ASSIGN2_ERROR | Assign 2 is out of range (0-5). |

  @result_check
  Scenario Outline: To check result for MID1_OBJ, MID2_OBJ, MID1_DES, MID2_DES, MID1_ASSIGN, and MID2_ASSIGN
    Given I visit the r20 page
    When I wait for 3 seconds
    Then I click on the element located by "MID1_OBJ_INPUT1"
    Then I pass the value "<MID1_OBJ>" to the element located by "MID1_OBJ_INPUT1"
    Then I click on the element located by "MID2_OBJ_INPUT2"
    Then I pass the value "<MID2_OBJ>" to the element located by "MID2_OBJ_INPUT2"
    Then I click on the element located by "MID1_DES_INPUT1"
    Then I pass the value "<MID1_DES>" to the element located by "MID1_DES_INPUT1"
    Then I click on the element located by "MID2_DES_INPUT2"
    Then I pass the value "<MID2_DES>" to the element located by "MID2_DES_INPUT2"
    Then I click on the element located by "MID1_ASSIGN_INPUT1"
    Then I pass the value "<MID1_ASSIGN>" to the element located by "MID1_ASSIGN_INPUT1"
    Then I click on the element located by "MID2_ASSIGN_INPUT2"
    Then I pass the value "<MID2_ASSIGN>" to the element located by "MID2_ASSIGN_INPUT2"
    Then I click on the element located by "CALCULATE_BUTTON"

    When I wait for 3 seconds
    Then I scroll until I find the element located by "obj1Result"
    Then the element located by "obj1Result" should contain the text "<obj1>"
    Then the element located by "obj2Result" should contain the text "<obj2>"
    Then the element located by "des1Result" should contain the text "<des1>"
    Then the element located by "des2Result" should contain the text "<des2>"
    Then the element located by "assign1Result" should contain the text "<assign1>"
    Then the element located by "assign2Result" should contain the text "<assign2>"
    Then the element located by "mid1Result" should contain the text "<mid1>"
    Then the element located by "mid2Result" should contain the text "<mid2>"
    Then the element located by "bestMidResult" should contain the text "<best_mid>"
    Then the element located by "leastMidResult" should contain the text "<least_mid>"
    Then the element located by "mid80Result" should contain the text "<mid_80>"
    Then the element located by "mid20Result" should contain the text "<mid_20>"
    Then the element located by "finalInternalMarksResult" should contain the text "<final_internal_marks>"
    Then the element located by "ceilFinalInternalMarksResult" should contain the text "<ceil_final_internal_marks>"
    Then I should take a screenshot


    Examples:
      | MID1_OBJ | MID2_OBJ | MID1_DES | MID2_DES | MID1_ASSIGN | MID2_ASSIGN | obj1 | obj2 | des1 | des2 | assign1 | assign2 | mid1 | mid2 | best_mid | least_mid | mid_80 | mid_20 | final_internal_marks | ceil_final_internal_marks |
      | 8        | 10       | 12       | 13       | 4           | 3           | 8    | 10   | 12   | 13   | 4       | 3       | 24   | 26   | 26       | 24        | 20.8   | 4.8    | 25.6                 | 26.0                      |
      | 7        | 9        | 10       | 11       | 5           | 4           | 7    | 9    | 10   | 11   | 5       | 4       | 22   | 24   | 24       | 22        | 19.2   | 4.4    | 23.6                 | 24.0                      |
      | 6        | 8        | 13       | 14       | 4           | 3           | 6    | 8    | 13   | 14   | 4       | 3       | 23   | 25   | 25       | 23        | 20     | 4.6    | 24.6                 | 25                        |
      | 9        | 10       | 15       | 13       | 5           | 5           | 9    | 10   | 15   | 13   | 5       | 5       | 29   | 28   | 29       | 28        | 23.2   | 5.6    | 28.8                 | 29.0                      |
      | 10       | 9        | 14       | 12       | 5           | 4           | 10   | 9    | 14   | 12   | 5       | 4       | 29   | 25   | 29       | 25        | 23.2   | 5      | 28.2                 | 29.0                      |
      | 6        | 7        | 10       | 9        | 3           | 3           | 6    | 7    | 10   | 9    | 3       | 3       | 19   | 19   | 19       | 19        | 15.2   | 3.8    | 19                   | 19                        |
