Feature: Test for Non-Existent Resource

  Scenario: Retrieve invalid post ID
    Given url 'https://jsonplaceholder.typicode.com/posts/99999'
    When method get
    Then status 404  # Resource not found