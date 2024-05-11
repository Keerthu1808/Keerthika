Feature: City Module API Automation
Scenario: Verify User Get CityList through api
Given User add header for to get CityList
When User send "POST" request for CityList endpoint
Then User should verify the status code
And User verify the cityList response message matches "Adikaratti" and saved city id