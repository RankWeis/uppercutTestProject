Feature: Basic HTTP GET Request

  Scenario: Retrieve user details
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'