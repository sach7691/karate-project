Feature: Config Demo

  Background:
    * url baseURL
    * headers Accept = 'application/json'

  Scenario: Config Demo 1
    Given print name

     #Simpe GET request getting baseURL from krate-config.js file
  Scenario: GET Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response