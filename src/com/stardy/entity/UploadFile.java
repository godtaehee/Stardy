package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UploadFile {
	
	private int fid;
	private String fileName;
	private String path;
	private int bid;
}
