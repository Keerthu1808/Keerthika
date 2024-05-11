@login
Feature: LoginModule API Automatiom
Scenario Outline: Get User logtoken from login endpoint
Given User add header
When  User and basic authentication for login
And User send "POST" request for login endpoint
Then User should verify the status code is 200
And User should verify the login response body firstName present as "" and get the logtoken saved