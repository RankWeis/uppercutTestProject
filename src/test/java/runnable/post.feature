Feature: HTTP POST Request

  Scenario: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request
    """
    {
      title: 'foo',
      body: 'bar',
      userId: 1
    }
    """
    When method post
    Then status 201
    And match response.id == 101