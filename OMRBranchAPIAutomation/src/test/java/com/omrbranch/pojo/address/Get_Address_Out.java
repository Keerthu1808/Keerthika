package com.omrbranch.pojo.address;

import java.util.ArrayList;


import lombok.Data;


@Data

public class Get_Address_Out {
	
	
	private int status;
	private String message;
	private ArrayList<Get_Address> data;
}
