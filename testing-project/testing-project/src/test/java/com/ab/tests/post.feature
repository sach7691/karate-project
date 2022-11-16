Feature: POST API Demo

  Background:
    * url 'https://reqres.in/api'
    * headers Accept = 'application/json'
    * def expectedOutput1 = read('response1.json')
    * def expectedOutput2 = read('file:src/test/java/com/ab/data/response2.json')
    * def requestBody = read('request2.json')
    * def requestBody1 = read('file:src/test/java/com/ab/data/request1.json')


  #Simple POST request
  Scenario: POST Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name":"Sachini","job":"leader"}
    When method POST
    Then status 201
    And print response


  #Simple POST with Background
  Scenario: POST Demo 2
    Given path  '/users'
    And request {"name":"Anu","job":"Teacher"}
    When method POST
    Then status 201
    And print response

  #Simple POST with Assertion
  Scenario: POST Demo 3
    Given path  '/users'
    And request {"name":"Anu","job":"Teacher"}
    When method POST
    Then status 201
    And match response == {"name":"Anu","job":"Teacher","id":"#string","createdAt":"#ignore"}
    And print response


    #Simple POST with read response from a file
  Scenario: POST Demo 4
    Given path  '/users'
    And request {"name":"Anu","job":"Teacher"}
    When method POST
    Then status 201
    And match response == expectedOutput1
    And match $ == expectedOutput1
    And print response

    #Read body data from a file
  Scenario: POST Demo 5
    Given path  '/users'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput1
    And match $ == expectedOutput1
    And print response

     #Read body data from a file and file is in a different package
  Scenario: POST Demo 6
    Given path  '/users'
    And request requestBody1
    When method POST
    Then status 201
    And match response == expectedOutput1
    And match $ == expectedOutput1
    And print response

    #print project path and file path
  Scenario: POST Demo 7
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/com/ab/data/request1.json'
    And print filePath


      #Simple POST with read response from a file and change the value
  Scenario: POST Demo 8
    Given path  '/users'
    And request requestBody
    And set requestBody.job = 'Engineer'
    When method POST
    Then status 201
    And match response ==  expectedOutput2
    And print response