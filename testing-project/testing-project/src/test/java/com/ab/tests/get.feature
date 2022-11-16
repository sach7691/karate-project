Feature: Get API Demo

  Background:
    * url 'https://reqres.in/api'
    * headers Accept = 'application/json'

  #Simpe GET request
  Scenario: GET Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #GET with Background
  Scenario: GET Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  #GET with path and parameters
  Scenario: GET Demo 3
    Given path '/users'
    And params page = 2
    When method GET
    Then status 200
    And print response

  #GET with Assertions
  Scenario: GET Demo 4
    Given path '/users'
    And params page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    # And match response.data[2].id == 3
    And match response.data[4].last_name == 'Morris'