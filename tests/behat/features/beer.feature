Feature: Beer demo content
  In order to test out the site
  As a site owner
  I need to view demo beer content

  @mz_demo
  Scenario: Homepage
    Given I am an anonymous user
    When I visit "/content/chimay"
    Then the "h1" element should contain "Chimay"
      And I should see "Bières de Chimay"
      And I should see "Dubbel"
      And I should see "Tripel"
