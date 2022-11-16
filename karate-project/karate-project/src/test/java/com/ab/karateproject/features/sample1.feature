#Feature: Test1
#  Scenario: test1
#    * print 'First Test'
Feature: Karate Basic Examples


  Scenario: Basic Example

        # assigning a string value:
    Given def var = 'Hello'
    Given def var1 = 'World'

      # using a variable
    Then print var
    Then print var1

      # assigning a number (you can use '*' instead of Given / When / Then)
    * def a = 50

    Then print 10+a

      # Example of Assert

    Given def Actual = 'Golden '
    And def Color = 'Green'
    Then assert Actual + Color == 'Golden Green'

      # Log Console Example ...Feature:

    Given def a = 10
    Given def b = 20

    Then print 'the value of Z is:', a+b


      # Read JSON File

    Given def ourJson = { Category: 'Students', Name: ['MITHUN', 'ARUNAVA', 'ERSHAD'] }

    Then print 'the value of ourJson is:', ourJson

    Then assert ourJson.Name[1] == 'ARUNAVA'


      # Read XML File


    Given def student = <student><name>MITHUN</name><scores><score>50</score><score>100</score></scores></student>
      # sadly, xpath list indexes start from 1
    Then match student/student/scores/score[2] == '100'

