Feature: Call Java from Karate
  Scenario: Call Java method
    * def MyJavaClass = Java.type('com.test.JavaKarateInterop')
    * def myObject = new MyJavaClass()
    * def result = myObject.hello()
    * assert result == "hello"