@login
Feature: Test for login

  Scenario: Login successful
    * def loginSuccessfulRequestBody = read('classpath:reto/json/loginSuccessful.json')

    Given url baseUrl
    Given path 'api', 'login'
    Given request loginSuccessfulRequestBody
    When method post
    Then status 200
    And match response.token == '#notnull'

  Scenario: Login unsuccessful
    * def loginUnsuccessfulRequestBody = read('classpath:reto/json/loginUnsuccessful.json')

    Given url baseUrl
    Given path 'api', 'login'
    Given request loginUnsuccessfulRequestBody
    When method post
    Then status 400
    And match response.error == "Missing password"