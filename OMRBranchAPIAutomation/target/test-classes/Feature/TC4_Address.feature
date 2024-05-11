Feature: Address Module API Automation
Scenario Outline: Verify add user address to the application through api
Given User and header and bearer authorization for accessing address endpoint
When User and request body for add new address "<first_name>", "<last_name>", "<mobile>", "<apartment>", "<state>", "<city>", "<country>", "<zipcode>","<address>","<address_type>"
And User send "POST" request the addUserAddress endpoint
Then User verify the status code is 200
And User should verify the addUserAddress response message matches "Address added successfull"

Examples:
|first_name|last_name|mobile		|apartment|state|city|country|zipcode|address|address_type|
|Mani			|Raj				|9944152058|prince	|123	|11		|101		|600081|chennai|Home|

Scenario Outline: Verify update user address to the application througj api
Given User add header and bearer authorization for accessing address endpoints
When User add request body to update new addrss "<first_name>", "<last_name>", "<mobile>", "<apartment>", "<state>", "<city>", "<country>", "<zipcode>","<address>","<address_type>"
And User send "PUT" request and update the addUserAddress endpoint
Then User verify the status code is 200
And User should verify the updateAddress response message matches "Address updated successfuly"

Examples:
|first_name|last_name|mobile		|apartment|state|city|country|zipcode|address|address_type|
|Mani			|Raj			|9944152058|prince	|123	|11		|22		|600081|chennai|Home|

Scenario Outline: Verify GetUserAddress to the application througj api
Given User add header and bearer authorization for accessing address endpoints
When User send "GET" request for GetUserAddress endpoint
Then User verify the status code is 200
Then User verify the GetUserAddress response message matches "OK"


Scenario Outline: Verify Delete UserAddress to the application througj api
Given User add header and bearer authorization for accessing address endpoints
When User add request body for address id
And User send "DELETE" request for DeleteAddress endpoint
Then User verify the status code is 200
Then User verify the DeleteAddress response message matches "Address deleted Successfully"