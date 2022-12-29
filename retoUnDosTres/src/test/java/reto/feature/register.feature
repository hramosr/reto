@register
Feature: Test for register

  Scenario: Register successful
    * def registerSuccessfulRequestBody = read('classpath:reto/json/registerSuccessful.json')
    
    Given url baseUrl
    Given path 'api', 'register'
    And request registerSuccessfulRequestBody
    When method post
    Then status 200
    And match response ==
    """
        {
            "id": "#number",
            "token": "#string"
        }
    """

  Scenario: Register unsuccessful
    * def registerUnsuccessfulRequestBody = read('classpath:reto/json/registerUnsuccessful.json')
    
    Given url baseUrl
    Given path 'api', 'register'
    And request registerUnsuccessfulRequestBody
    When method post
    Then status 400
    And match response.error == "Missing password"