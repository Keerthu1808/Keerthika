package com.omrbranch.stepDefinition;

import org.demo.API_BaseClass.APIBaseClass;
import org.demo.API_BaseClass.Login_Output_Pojo;
import org.testng.Assert;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;

public class TC1_LoginStep extends APIBaseClass {
	Response response;
	
	@Given("User add header")
	public void user_add_header() {
		
		addHeader("accept", "application/json");
			   
	}
	
	@When("User and basic authentication for login")
	public void user_and_basic_authentication_for_login() {
	   
		addBasicAuth("keerthikakeerthuu@gmail.com", "Keerthu18@");
	}
	
	@When("User send {string} request for login endpoint")
	public void user_send_request_for_login_endpoint(String string) {
	   
		 response = addRequestType("POST", "https://omrbranch.com/api/postmanBasicAuthLogin");

	}
	
	@Then("User should verify the status code is {int}")
	public void user_should_verify_the_status_code_is(Integer int1) {
		
		int responseCode = getResponseCode(response);
		System.out.println(responseCode);
		Assert.assertEquals(responseCode, 200, "Verify status code");

	}
	
	@Then("User should verify the login response body firstName present as {string} and get the logtoken saved")
	public void user_should_verify_the_login_response_body_first_name_present_as_and_get_the_logtoken_saved(String string) {

		Login_Output_Pojo login_output_pojo = response.as(Login_Output_Pojo.class);
		String firstName = login_output_pojo.getData().getFirst_name();
		System.out.println(firstName);
		Assert.assertEquals(firstName, "Keerthika", "verify firstName");

		String lastName = login_output_pojo.getData().getLast_name();
		System.out.println(lastName);
		Assert.assertEquals(lastName, "Krishnan", "verify lastName");
		String logToken = login_output_pojo.getData().getLogtoken();
	}




}
