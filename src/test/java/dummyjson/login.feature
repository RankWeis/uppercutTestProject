Feature: Login

  Background: Precondition
    Given url "https://dummyjson.com"

  Scenario: Login
    * def loginPayload =
    """
    {
      "username": "emilys",
      "password": "emilyspass",
      "expiresInMins": 30
    }
    """

    Given path "auth", "login"
    * request loginPayload
    When method POST
    Then status 200
    * def token = response.accessToken
