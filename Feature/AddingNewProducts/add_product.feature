
@wip
Feature: Add new product
  Background:
    Given "Product" page downloaded
    When user click "Add new product" button


  @positive @skip
  Scenario Outline: a user add new "<field>" item with data in required fields only
    When user open new  "<field>" item page
    And enter data in required fields
    And click "Add product" button
    Then New "<field>" item was created warning pops up

  Examples:
    |field|
    |music|
    |film |
    |card |
    |shoes|

   @positive @skip
  Scenario Outline: a user add new "<field>" item with data in all fields
    When user open new  "<field>" item page
    And enter data in required fields
    And enter data in all non required fields
    And click "Add product" button
    Then New "<field>" item was created warning pops up
       Examples:
    |field|
    |music|
    |film |
    |card |
    |shoes|
gi
  @negative @skip
  Scenario Outline: a user add new "<field>" item without all required data
    When user open new  "<field>" item page
    And click "Add product" button
    Then "This field is required" warnings pops up under all required fields


  Examples:
    |field|
    |music|
    |film |
    |card |
    |shoes|



