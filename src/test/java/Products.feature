Feature: Products
  Background: Precondition
    Given url mainUrl
    * headers auth

  Scenario: Get All Products
    Given path "products"
    When method GET
    Then status 200
    * assert responseTime < 1000
  Scenario: Get Product
    Given path "products", 2
    When method GET
    Then status 200
    * assert responseTime < 1000
    * assert response.id == 2
    * assert response.category == "beauty"
    * assert response.weight == 3
    * assert response.dimensions.width == 12.42
    * assert response.minimumOrderQuantity == 32