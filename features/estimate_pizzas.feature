Feature: Estimating Pizza Requirements
  In order to avoid wasting either pizza or money
  As an organizer
  I want to know how many pizzas I need to order

  Background:
    Given there are 10 guests expected

  Scenario: Typical meetup
   Given the guests are hungry
     And the guests love beer
    When I ask how much to order
    Then I will know I need to buy 3 pizza pies
     And I will know I need to buy 1 case and 1 six-pack of beer

  Scenario: Late-night meetup
   Given the guests are starving
     And the guests like beer
    When I ask how much to order
    Then I will know I need to buy 4 pizza pies
     And I will know I need to buy 1 case of beer

  Scenario: After-lunch meetup
   Given the guests are full
     And the guests are underage
    When I ask how much to order
    Then I will know I need to buy 2 pizza pies
     And I will know I don't need to buy beer
