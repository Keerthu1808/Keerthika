package org.hotel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.Duration;
import java.util.Date;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.ui.Select;

public class BaseClass {

	public static WebDriver driver;

	// Browser Launch
	public static void driverLaunch(String browserName) {

		switch (browserName) {
		case "CHROME":

			driver = new ChromeDriver();

			break;
		case "IE":

			driver = new InternetExplorerDriver();

			break;

		default:
			break;
		}

	}

	// get URL
	public static void getURL(String url) {

		driver.get(url);
	}

	// maximize window

	public static void maxiWindow() {

		driver.manage().window().maximize();

	}

	// Implicit Wait

	public static void implicityWait() {

		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));

	}

	// FindId

	public static WebElement findID(String idpath) {

		WebElement element = driver.findElement(By.id(idpath));

		return element;

	}

	// FindName

	public static WebElement findName(String name) {

		WebElement element = driver.findElement(By.name(name));
		return element;

	}

	// Find xpath

	public static WebElement findXpath(String path) {

		WebElement element = driver.findElement(By.xpath(path));
		return element;
	}

	// SendKeys

	public static void sendkeys(WebElement element, String data) {
		// txtEmail "keerthi@gmail.com"

		element.sendKeys(data);

	}

	// Button Click

	public static void buttonClick(WebElement element) {

		element.click();
	}

	// getText

	public static String getText(WebElement element) {

		String s = element.getText();
		return s;
	}

	// filePath

	public String filePath() {

		String s = System.getProperty("user.dir");
		return s;

	}

	public void selectVisibleText(WebElement element, String text) {

		Select s = new Select(element);
		s.selectByVisibleText(text);

	}

	public static void drap_And_Down(WebElement element, String name) {

		Select select = new Select(element);
		select.selectByValue(name);

	}

	public static void frameId(WebElement frame) {
		driver.switchTo().frame(frame);
	}

	public static void alertAccept()

	{
		Alert alert = driver.switchTo().alert();
		alert.accept();
	}

	public static void alertDismiss()

	{
		Alert alert = driver.switchTo().alert();
		alert.dismiss();
	}

}
