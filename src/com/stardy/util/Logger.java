package com.stardy.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;

public class Logger {

	public DateTimeFormatter getFormat() {
		return DateTimeFormatter.ofPattern("[yyyy-MM-dd hh:mm:ss]");
	}
	
	public void info(String s) { 
		
		System.out.println(LocalDateTime.now().format(getFormat()) + " " + s);
	}
}
