package com.springboot.Pilotproject.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class productDTO {
	private int pno;
	private String pcategory;
	private String pmade;
	private String pname;
	private int pprice;
	private String pdesc;
	private int pstock;
	private Date pdate;
	private MultipartFile pUpload;
	private String pfile;
	private int mno;
}
