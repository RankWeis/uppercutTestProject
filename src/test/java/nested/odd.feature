Feature: stateful mock server

  Background:
    * def cats = {}

  Scenario:
    * print "hi"

  Scenario:
    Given def r =
    """
    function() {
      document.querySelectorAll('.ruResponseButtons ._42ft._4jy0._4jy3._4jy1');
      for (i = 0; i < r.length; i++) {
        r[i].click();
      }
    }
    """