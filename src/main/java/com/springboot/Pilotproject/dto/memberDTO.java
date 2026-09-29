package com.springboot.Pilotproject.dto;

import java.util.Date;

import lombok.Data;

@Data
public class memberDTO {
	private int mno;
	private String mid;
	private String mpasswd;
	private String mname;
	private String mgender;
	private String maddr;
	private String mzipno;
	private String mtel;
	private String memail;
	private Date mdate;
	private String mauthority;
}
