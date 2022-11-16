
  Feature: user Details

  Background:
    * def expectedOutput = read('../results/output.json')

  Scenario: request user 2 details

  Given url 'https://reqres.in/api/users/2'
  When method GET
  Then status 200
  Then print response
#  And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg"},"support":{"url":"https:\/\/reqres.in\/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
  # Given def myVar = 'test' (instead of Given you can give *)
#  * def myVar = 'test'
#  Then print myVar

  And match response == expectedOutput[0]
#  And match response.data.id == 2
#  And match response.data.last_name != null
  #cannot compare fields which don't exist
  #And match response.data.job_code == null
#  * def job_code = response.data.job_code
#  And match job_code == null



