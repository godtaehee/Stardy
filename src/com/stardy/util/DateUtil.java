package com.stardy.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	
	public String transDate(Date date) {
		
		return sdf.format(date);
	}
}
