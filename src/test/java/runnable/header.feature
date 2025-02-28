Feature: Header Validation

  Scenario: Verify content-type header
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.userId == 1
    And match response.title != null
    And match header Content-Type == 'application/json; charset=utf-8'