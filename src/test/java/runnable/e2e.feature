Feature: End-to-End User Workflow

  Scenario: Create and update a user
    # Step 1: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request
    """
    {
      title: 'new title',
      body: 'new body',
      userId: 1
    }
    """
    When method post
    Then status 201
    And match response.id == 101

#    # Step 2: Update the newly created user's data
#    Given url 'https://jsonplaceholder.typicode.com/posts/101'
#    And request {
#      id: 101,
#      title: 'updated title',
#      body: 'updated body',
#      userId: 1
#    }
#    When method put
#    Then status 200
#    And match response.title == 'updated title'
#    And match response.body == 'updated body'
#
#    # Step 3: Verify the updated data (mock API may return the request itself here)
#    Given url 'https://jsonplaceholder.typicode.com/posts/101'
#    When method get
#    Then status 200
#    And match response.title == 'updated title'
#    And match response.body == 'updated body'