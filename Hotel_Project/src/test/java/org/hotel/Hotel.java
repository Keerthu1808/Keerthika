package org.hotel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

public class Hotel extends BaseClass {

	public static void main(String[] args) throws InterruptedException {

		// URL
		driverLaunch("CHROME");
		getURL("https://omrbranch.com/");
		maxiWindow();
		implicityWait();

		// Login

		WebElement email = findID("email");
		sendkeys(email, "keerthikakeerthuu@gmail.com");
		WebElement pass = findID("pass");
		sendkeys(pass, "Keerthu18@");
		findXpath("//button[text()='Login']").click();
		WebElement welText = findXpath("//a[@class='icoTwitter mr-2 dropdown-toggle']");
		String text = welText.getText();
		System.out.println(text);

		// Search Hotel

		findXpath("//h3[text()='Hotel Booking']").click();
		WebElement state = findID("state");
		drap_And_Down(state, "Tamil Nadu");
		WebElement city = findID("city");
		drap_And_Down(city, "Chennai");
		WebElement roomType = findID("room_type");
		drap_And_Down(roomType, "Deluxe");

		findName("check_in").click();
		findXpath("//a[text()='27']").click();
		findName("check_out").click();
		findXpath("//a[text()='30']").click();

		WebElement rooms = findID("no_rooms");
		buttonClick(rooms);
		drap_And_Down(rooms, "2");

		WebElement adults = findID("no_adults");
		buttonClick(adults);
		drap_And_Down(adults, "4");
		WebElement child = findID("no_child");
		sendkeys(child, "2");

		WebElement frame = findID("hotelsearch_iframe");
		frameId(frame);
		findID("searchBtn").click();

		// Print Select Hotel Text

		WebElement selectHotelText = findXpath("//h5[text()='Select Hotel']");
		System.out.println(selectHotelText.getText());

		// Print 1st Hotel Name and Price

		WebElement hotelname = findXpath("//h5[text()='Hyatt Regency Chennai Deluxe']");
		System.out.println(hotelname.getText());

		WebElement price = findXpath("//strong[text()='$ 8,496']");
		System.out.println(price.getText());

		findXpath("//a[text()='Continue']").click();

		// Handle Popup window

		alertAccept();

		// Select Book Hotel Text

		WebElement bookHotelText = findXpath("//h2[text()='Book Hotel - Hyatt Regency Chennai Deluxe']");
		String text2 = getText(bookHotelText);
		String[] split = text2.split("-");
		String value="Book Hotel ";
		for(String newValue:split)
		{
			if(value.equals(newValue))
			{
				System.out.println(newValue);
			}
		}
		

		// Add Guest Details

		WebElement id = findID("own");
		buttonClick(id);
		WebElement salutation = findID("user_title");
		drap_And_Down(salutation, "Ms");
		WebElement firstName = findID("first_name");
		sendkeys(firstName, "Keerthika");
		WebElement lastName = findID("last_name");
		sendkeys(lastName, "Krishnan");
		WebElement mobile = findID("user_phone");
		sendkeys(mobile, "9876543210");
		WebElement userEmail = findID("user_email");
		sendkeys(userEmail, "keerthikakeerthuu@gmail.com");
		WebElement nextButt = findID("step1next");
		buttonClick(nextButt);
		
//		WebElement gstOptional = findID("gst");
//		buttonClick(gstOptional);
		
//		//GST
//		
//		WebElement regNum = findID("gst_registration");
//		sendkeys(regNum, "9043592058");
//		WebElement compName = findID("company_name");
//		sendkeys(compName, "GreensTech");
//		WebElement compAddre = findID("company_address");
//		sendkeys(compAddre, "OMRBranch,Thoraipakkam");

		
		//Special Requ
		
		WebElement otherRequ = findID("other_request");
		sendkeys(otherRequ, "Hotel Booking");
		WebElement nextButt1 = findID("step2next");
		buttonClick(nextButt1);
		
		WebElement card = findXpath("//h5[text()='Credit/Debit/ATM Card']");
		buttonClick(card);
		
		WebElement payType = findID("payment_type");
		buttonClick(payType);
		drap_And_Down(payType,"debit_card");
		
		WebElement selectCard = findID("card_type");
		
		//buttonClick(payType);
		
		drap_And_Down(selectCard,"visa");
		
		WebElement cardNo = findID("card_no");
		sendkeys(cardNo,"5555555555552222");
		
		WebElement cardOnName = findID("card_name");
		sendkeys(cardOnName,"Keerthika");
		
		WebElement cardMonth = findID("card_month");
		drap_And_Down(cardMonth,"01");
		
		WebElement cardYear = findID("card_year");
		drap_And_Down(cardYear,"2030");
		
		WebElement cvv = findID("cvv");
		sendkeys(cvv,"789");
		
		WebElement submitButt = findID("submitBtn");
		submitButt.click();
		
		//Print OrderID,Hotel Name and Confirm
		
	
		WebElement orderId = findName("booking-code");
		System.out.println(orderId.getText());
		
		WebElement text1 = findXpath("//p[strong[text()='Hyatt Regency Chennai']]");
		System.out.println(text1.getText());
		
		//Modify checkin date
		
		WebElement myAcconIcon = findXpath("//a[@class='icoTwitter mr-2 dropdown-toggle']");
		buttonClick(myAcconIcon);
		
		WebElement myAcco = findXpath("//a[text()='My Account']");
		buttonClick(myAcco);
		
		WebElement bookingText = findXpath("//h4[contains(text(),'Bookings ')]");
		System.out.println(bookingText.getText());
		
		WebElement edit = findXpath("//button[text()='Edit']");
		edit.click();
		
		WebElement checkin=findName("check_in");
		buttonClick(checkin);
		findXpath("//a[text()='30']").click();
		
		WebElement checkout=findName("check_out");
		buttonClick(checkout);
		findXpath("//a[text()='3']").click();
		
		WebElement confirm = findXpath("//button[text()='Confirm']");
		buttonClick(confirm);
		
		WebElement success = findXpath("//li[text()='Booking updated successfully']");
		System.out.println(getText(success));
		
		WebElement cancelBut = findXpath("//a[text()='Cancel']");
		buttonClick(cancelBut);
		
		alertAccept();
		
		WebElement cancelled = findXpath("//li[text()='Your booking cancelled successfully']");
		System.out.println(getText(cancelled));
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
