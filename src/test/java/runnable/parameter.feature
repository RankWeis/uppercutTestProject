Feature: Using Path and Query Parameters

  Scenario: Get posts by a specific user
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And param userId = 1
    When method get
    Then status 200
    And match response[0].userId == 1
    And assert response.length > 0