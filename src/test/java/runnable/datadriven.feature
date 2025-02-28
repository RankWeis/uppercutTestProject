@MyTag
Feature: Data-Driven User Tests


  Scenario Outline: Retrieve user by ID
    Given url 'https://jsonplaceholder.typicode.com/users/<id>'
    When method get
    Then status 200
    And match response.id == <id>
    And match response.name != null

    Examples:
      | id |
      | 1  |
      | 2  |
      | 3  |