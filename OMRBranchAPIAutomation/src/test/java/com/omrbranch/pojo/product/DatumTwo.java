package com.omrbranch.pojo.product;
import java.util.ArrayList;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@AllArgsConstructor
@NoArgsConstructor
public class DatumTwo {
	
	private String image;
	private String type;
	private String text;
	private int id;
	private int category_id;

}
