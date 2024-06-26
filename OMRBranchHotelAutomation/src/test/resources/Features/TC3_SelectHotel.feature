Feature: Verifying omrbranch selectHotel module

  Scenario Outline: Verify select hotel and verify navigate to book hotel upon accepting the alert
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 |
      
  Scenario Outline: Verify select hotel and verify navigating same page upon dismiss the alert
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When User search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When click continue button
    And User dismiss the alert
    Then User should verify after dismiss alert it navigate same page "Select Hotel"

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 |