Feature: Nested JSON and Dynamic Expressions


  Scenario: Process deeply nested JSON with dynamic expressions
    * def input = { "outer": { "inner": { "key": "#[randomString(5)]" } } }
    * def expected = karate.jsonPath(input, '$.outer.inner.key')

    * def dynamicResult =
    """
    function() {
      var result = karate.jsonPath(input, '$.outer.inner.key');
      return result === expected;
    }
    """
    * match dynamicResult() == true
    * print 'Dynamic result validation passed!'

  Scenario Outline: Test with edge-case data inputs
    * def calculate = function(x, y) { return x / y; }
    Given a, <a>
    Given b, <b>
    When def result = calculate(a, b)
    Then match result == <expected>

    Examples:
      | a    | b    | expected |
      | 10   | 2    | 5        |
      | -10  | 5    | -2       |
      | 1000 | 0.5  | 2000     |
      | 1e6  | 1e-3 | 1e9      |