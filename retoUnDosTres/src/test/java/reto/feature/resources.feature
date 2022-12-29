@resources
Feature: Get resource information

  Scenario: List <resource>
    Given url baseUrl
    Given path 'api', 'unknown'
    When method get
    Then status 200
    And match response ==
    """
        {
            "page": "#number",
            "per_page": "#number",
            "total": "#number",
            "total_pages": "#number",
            "data": "#array",
            "support": {
                "url": "#string",
                "text": "#string"
            }
        }
    """