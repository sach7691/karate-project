Feature: user Details

  Background:
    * def expectedOutput = read('../results/output.json')
    * def result = call read('userDetails1.feature')

  #Scenario 3
  Scenario: request user 3 details

    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200
    And match response == expectedOutput[1]
    Then print 'result-------->',result
    * def first_name = result.response.data.first_name
    Then print 'First Name is -------->',first_name
#    And match response.data.id == 3
#    And match response.data.last_name != null