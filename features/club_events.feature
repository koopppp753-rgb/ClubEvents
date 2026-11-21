Feature: Club Events Management
  As a club member or organizer
  I want to browse, register for, and manage club events
  So that I can participate in campus activities smoothly

  Scenario: User logs into the system
    Given the user is on the login page
    When the user enters valid credentials
    Then the user should be redirected to the events list

  Scenario: User views available events
    Given the user is logged in
    When the user opens the events list page
    Then the user should see upcoming club events

  Scenario: User registers for an event
    Given the user is viewing an upcoming event
    When the user clicks the RSVP button
    Then the user's registration should be confirmed