Feature: User login into RS Componnets Website

  Background: Given that I am on RS Components Website

  @login
    Scenario: User login into RS Components Website
    When I input valid username and password
    And  And I click submit
    Then I am successfully logged into my account

   @findLocalBranch
    Scenario: User searching for a local branch on Rs Componets Website
      When I click on Find your local branch link
      Then the all the list of branches and a map must be sucessfully displayed

   @searchField

   Scenario outline: user able to shop for list of products

     When I input a valid <product_type> in the search field
     Then the user is redirected to the relevant product page

   Examples:

   | product_type |
   | batteries  |
   | cables & wires |
   | connectors |



   @myAccountNavigator

   Scenario outline: User is able to select all the menu under My Account navigator

     When i click on account_navigator
     And i click all link menus
     Then the page are successfully displayed

   Examples:
   | account_navigator |
   | My Orders |
   | Parcel tracking |
   | Returns |
   | Request|

  @allProductsNavigator

  Scenario outline: User is able to select all the menu under All Products navigator

     When i click on All products_navigator
     And i click all the link menus
     Then page are successfully displayed

   Examples:
   | products_navigator |
   | automation & control gear |
   | cables & wires |
   | lighting |
   | relays|
   | switches|