@users
Feature: CRUD users

  Background: Define variables
    # time validation for json response
    * def timeValidator = read('classpath:reto/helpers/timeValidator.js')

  Scenario: List users
    Given url baseUrl
    Given path 'api', 'users'
    And param page = '2'
    When method get
    Then status 200
    Then match response.page == 2
    And match response.data == "#array"

  Scenario: Create user
    * def newUserRequestBody = read('classpath:reto/json/newUserRequest.json')

    Given url baseUrl
    Given path 'api', 'users'
    And request newUserRequestBody
    When method post
    Then status 201
    And match response ==
    """
      {
        "name": "#string",
        "job": "#string",
        "id": "#string",
        "createdAt": "#? timeValidator(_)"
      }
    """

  Scenario: Update user - put
    * def putUpdateUserRequestBody = read('classpath:reto/json/putUpdateUserRequest.json')

    Given url baseUrl
    Given path 'api', 'users', '2'
    And request putUpdateUserRequestBody
    When method put
    Then status 200
    And match response ==
    """
      {
        "name": "#string",
        "job": "#string",
        "updatedAt": "#? timeValidator(_)"
      }
    """

  Scenario: Update user - patch
    * def patchUpdateUserRequestBody = read('classpath:reto/json/patchUpdateUserRequest.json')

    Given url baseUrl
    Given path 'api', 'users', '2'
    And request patchUpdateUserRequestBody
    When method patch
    Then status 200
    And match response ==
    """
      {
        "name": "#string",
        "job": "#string",
        "updatedAt": "#? timeValidator(_)"
      }
    """

  Scenario: Delete user
    Given url baseUrl
    Given path 'api', 'users', '2'
    When method delete
    Then status 204