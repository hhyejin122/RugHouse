package com.springboot.Pilotproject.controller;

import java.io.File;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.Pilotproject.dao.ImemberDAO;
import com.springboot.Pilotproject.dao.IproductDAO;
import com.springboot.Pilotproject.dto.memberDTO;
import com.springboot.Pilotproject.dto.productDTO;

@Controller
public class productController {
	@Autowired
	private IproductDAO dao;
	
	@Autowired
	private ImemberDAO mdao;
	
	@RequestMapping("/product/productWriteForm")
	public String productWirteForm(@RequestParam("mno") int mno
								  ,Model model) {
		model.addAttribute("mno", mno);
		return "product/productWriteForm";
	}
	
	@RequestMapping("/productWrite") // 상품 업로드
	public String productWrite(@RequestParam("pUpload") MultipartFile pUpload,
							   Principal principal,
							   productDTO dto) throws Exception {
		
		String mid = principal.getName();
		memberDTO mdto = mdao.findById(mid);
		dto.setMno(mdto.getMno());
		
		if(!pUpload.isEmpty()) {
			String pfile = pUpload.getOriginalFilename();
			pUpload.transferTo(new File("C:\\SpringBoot\\Pilotproject\\src\\main\\resources\\static\\images\\"+pfile));
			dto.setPfile(pfile);
		}
		//dto.setMno(mno);
		dao.productWrite(dto);
		return "redirect:mainPage";
	}
	
	@RequestMapping("/product/productList") // 상품 목록 보기
	public String productList(Model model, Principal principal) {
		String mid = principal.getName();
		memberDTO mdto = mdao.findById(mid);
		model.addAttribute("mno", mdto.getMno());
		model.addAttribute("pList", dao.productList());
		return "productList";
	}
	
	@RequestMapping("/product/productView")
	public String productview(@RequestParam("pno") int pno,Model model) {
		model.addAttribute("pview",dao.productView(pno));
		return "product/productView";
	}
	
	@RequestMapping("/productDetail")
	public String productDetail(@RequestParam("pno") int pno,Model model) {
		model.addAttribute("pdetail",dao.productView(pno));
		return "productDetail";
	}
	
	@RequestMapping("/productDelete") // 상품 삭제
	public String productDelete(@RequestParam("pno") int pno) {
		dao.productDelete(pno);
		return "redirect:product/productList";
	}
	
	@RequestMapping("/productUpdateForm")
	public String productUpdateForm(productDTO dto,Model model) {
		model.addAttribute("pupdate",dao.productView(dto.getPno()));
		return "product/productUpdateForm";
	}
	
	
	@RequestMapping("/productUpdate") // 상품 업데이트
	public String productUpdate(@RequestParam("pUpload") MultipartFile pUpload,
								Principal principal,
								productDTO dto) throws Exception {
		String mid = principal.getName();
		memberDTO mdto = mdao.findById(mid);
		dto.setMno(mdto.getMno());
		
		if(!pUpload.isEmpty()) {
			String pfile = pUpload.getOriginalFilename();
			pUpload.transferTo(new File("C:\\SpringBoot\\Pilotproject\\src\\main\\resources\\static\\images\\"+pfile));
			dto.setPfile(pfile);
		}
		dao.productUpdate(dto);
		return "redirect:product/productList";
		
	}
	
	
}
