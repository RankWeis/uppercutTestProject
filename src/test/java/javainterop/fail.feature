@ignore
Feature: Call Java from Karate
  Scenario: Call Java method
    * def MyJavaClass = Java.type('org.example.ExceptionThrower')
    * def myObject = new MyJavaClass()
    * def result = myObject.fail()