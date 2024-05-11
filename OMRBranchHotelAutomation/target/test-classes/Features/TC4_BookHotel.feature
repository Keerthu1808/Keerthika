Feature: Verifying omrbranch BookHotel module

  Scenario Outline: Verify Book hotel including GST-card(debit card-VISA)-with special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the GST details "<enterRegistrationNumber>","<enterCompanyName>" and "<enterCompanyAddress>"
    And User add the Special Request
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552222 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     | enterRegistrationNumber | enterCompanyName       | enterCompanyaddress |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |              9043592058 | Greens Tech OMR Branch | Thoraipakkam        |

  Scenario Outline: Verify Book hotel including GST-card(credit card-VISA)-with special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the GST details "<enterRegistrationNumber>","<enterCompanyName>" and "<enterCompanyAddress>"
    And User add the Special Request
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552223 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     | enterRegistrationNumber | enterCompanyName       | enterCompanyaddress |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |              9043592058 | Greens Tech OMR Branch | Thoraipakkam        |

  Scenario Outline: Verify Book hotel including GST-card(debit card-VISA)-without special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the GST details "<enterRegistrationNumber>","<enterCompanyName>" and "<enterCompanyAddress>"
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552222 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     | enterRegistrationNumber | enterCompanyName       | enterCompanyaddress |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |              9043592058 | Greens Tech OMR Branch | Thoraipakkam        |

  Scenario Outline: Verify Book hotel including GST-card(credit card-VISA)-without special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the GST details "<enterRegistrationNumber>","<enterCompanyName>" and "<enterCompanyAddress>"
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552222 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     | enterRegistrationNumber | enterCompanyName       | enterCompanyaddress |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |              9043592058 | Greens Tech OMR Branch | Thoraipakkam        |

  Scenario Outline: Verify Book hotel without GST-card(debit card-VISA)-with special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the Special Request
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552222 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |

  Scenario Outline: Verify Book hotel without GST-card(credit card-VISA)-without special request
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the payment details,proceed with card type "<cardType>"
      | selectCard | cardNo           | cardName | month   | year | cvv |
      | VISA       | 5555555555552222 | pranav   | January | 2025 | 555 |
      | MasterCard | 5555555555554444 | pranav   | January | 2025 | 555 |
      | Amex       | 5555555555550000 | pranav   | January | 2025 | 555 |
      | Discover   | 5555555555556666 | pranav   | January | 2025 | 555 |
    Then User should verify after booking hotel success message "Booking is Confirmed" and save orderId
    And User should verify selected hotel is booked

    Examples: 
      | userName                  | passWord  | state      | City    | roomType | checkInDate | checkOutDate | noOfRoom | noOfAdults | noOfChild | selectSalutation | firstName | lastName | mobileNo   | email                     |
      | keerthikakeerthuu@gmail.com | Keerthu18@ | Tamil Nadu | Chennai | Luxury   | 2024-05-03  | 2024-05-07   | 3-Three  | 5-Five     |         2 | MS.              | Ramya     | G        | 8608630758 | ramyaganesan465@gmail.com |

  Scenario Outline: Verify without entering any field book hotel and verify error message
    Given User is on the omrbranch page
    When User login "<userName>","<passWord>"
    Then User should verify the after login success Message "welcome Keerthika"
    When user search hotel "<state>","<city>","<roomType>","<checkInDate>","<checkOutDate>","<noOfRoom>","<noOfAdults>" and "<noOfChild>"
    Then User should verify the search hotel success message "Select Hotel"
    When User save first hotel name and price
    And User select the first hotel
    And User accept the alert
    Then User should verify after select hotel success message "Book Hotel"
    When User add the Guest details "<selectSalutation>","<firstName>","<lastName>","<mobileNo>" and "<email>"
    And User add the GST details "<enterRegistrationNumber>","<enterCompanyName>" and "<enterCompanyAddress>"
    And User add the Special Request
    When User click the submit button without entering any field
    Then User should verify payment Error message "Please select your card type","Please select your card","Please provide your card number","Please provide name on your card","Please provide your Card Expiry Date" and "Please provide your Card's security code"