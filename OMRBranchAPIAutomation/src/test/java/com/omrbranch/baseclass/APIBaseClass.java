package com.omrbranch.baseclass;

import java.io.File;

import io.restassured.RestAssured;
import io.restassured.http.Headers;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class APIBaseClass {

	RequestSpecification requestSpecification;
	Response respo;

	public void addHeader(String key, String value)
	{
		requestSpecification=RestAssured.given().header(key,value);
	}
	
	public void addHeaders(Headers head)
	{
		requestSpecification=RestAssured.given().headers(head);

	
	}
	public Response addRequestType(String reqType, String endPoint) {
		switch (reqType) {
		case "GET":
			respo = requestSpecification.when().get(endPoint);
			break;
		case "POST":
			respo = requestSpecification.when().post(endPoint);
			break;
		case "PUT":
			respo = requestSpecification.when().put(endPoint);
			break;
		case "DELETE":
			respo = requestSpecification.when().delete(endPoint);
			break;
		default:
			break;

		}
		return respo;
	}

	public int getResponseCode(Response respo)

	{
		int statusCode=respo.getStatusCode();
		return statusCode;
		

	}
		public String getResponseBodyAsPrettyString(Response respo)
	{
		String body=respo.asPrettyString();
		return body;
		
	}
	
	public void addBasicAuth(String uesrName, String passWord)
	{
		requestSpecification=requestSpecification.auth().preemptive().basic(uesrName,passWord);
	}
	
	
	public void addBodyStr(String nuts)
	{
		requestSpecification=requestSpecification.body(nuts);
				
	}
	
	public void addBody(Object body)
	{
		
		requestSpecification=requestSpecification.body(body);

	}
	
	
	public void addFormData(String key,File pathFile)
	{
		requestSpecification=requestSpecification.multiPart(key,pathFile);
	}
}



















