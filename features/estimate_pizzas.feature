Feature: Estimating Pizza Requirements
  In order to avoid wasting either pizza or money
  As an organizer
  I want to know how many pizzas I need to order

  Background:
    Given there are 10 guests expected

  Scenario: Typical meetup
   Given the guests are hungry
    When I ask how much to order
    Then I will know I need to buy 3 pizza pies

  Scenario: Late-night meetup
   Given the guests are starving
    When I ask how much to order
    Then I will know I need to buy 4 pizza pies

  Scenario: After-lunch meetup
   Given the guests are full
    When I ask how much to order
    Then I will know I need to buy 2 pizza pies
