Feature: State Module API Automation
Scenario: Verify User Get StatList through api
Given User add headers for StateList
When User send "GET" request for StateList endpoint
Then User should verify the Status code is 200
And User should verify the Statelist response message matches "Tamil Nadu" and saved state id