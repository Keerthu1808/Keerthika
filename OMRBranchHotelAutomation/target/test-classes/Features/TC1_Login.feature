Feature: Verify omrbranch Login Module

Scenario Outline: Verifying omrbranch login with valid data
	Given User is on the omrbranch Page
	When User enter "<userName>","<passWord>"
	Then User should verify after login success message "welcome Keerthika"
		
	Examples:
		|userName|passWord|
		|keerthikakeerthuu@gmail.com|Keerthu18@|
	

Scenario Outline: Verifying omrbranch login with valid data using EnterKey
	Given User is on the omrbranch Page
	When User enter "<userName>","<passWord>" with EnterKey
	Then User should verify after login success message "welcome Keerthika"
		
	Examples:
		|userName|passWord|
		|keerthikakeerthuu@gmail.com|Keerthu18@|
		

Scenario Outline: Verifying omrbranch login with invalid data
	Given User is on the omrbranch Page
	When User enter "<userName>","<passWord>"
	Then User should verify after login error message after click button "invalid login detail"
		
	Examples:
		|userName|passWord|
		|keerthikakeerthuu@gmail.com|Keer18@|
	