package org.hotel;

import org.apache.poi.util.SystemOutLogger;
import org.openqa.selenium.WebElement;

public class Error_Msg extends BaseClass 
{
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
				findXpath("//h3[text()='Hotel Booking']").click();
				
				
				//Error Msg
				
				WebElement frame = findID("hotelsearch_iframe");
				frameId(frame);
				findID("searchBtn").click();
				
				Thread.sleep(3000);
				WebElement state = findID("invalid-state");
				String text = getText(state);
				System.out.println(text);
				
	}

}
