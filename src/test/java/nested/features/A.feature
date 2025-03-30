Feature: Prints stuff

  Scenario: Test
    * def a1 = call read("classpath:nested/features/A1.feature")
    * def a2 = call read("classpath:nested/features/A2.feature")
    * match a1 == "bcde"

  Scenario: Test
    * def a1 = call read("classpath:nested/features/A1.feature")
    * def a2 = call read("classpath:nested/features/A2.feature")
