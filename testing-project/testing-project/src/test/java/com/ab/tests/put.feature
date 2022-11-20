Feature: PUT API Demo

  Background:
    * url 'https://reqres.in/api'
    * def  requestBody = read('file:src/test/java/com/ab/data/request3.json')

    #Simple PUT method
  Scenario: PUT Demo 1
    Given path '/users/2'
    And request requestBody
    When method PUT
    Then status 200
    And print response
    And print responseStatus

