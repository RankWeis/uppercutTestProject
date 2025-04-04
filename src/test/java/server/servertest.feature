@ignore
Feature: Tests Server
  Scenario: Test server
    Given url "http://localhost:8000"
    When method get
    Then status 200
    And match response == "Hello, this is a simple HTTP server response!"