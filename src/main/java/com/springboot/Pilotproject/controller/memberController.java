package com.springboot.Pilotproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.Pilotproject.dao.ImemberDAO;
import com.springboot.Pilotproject.dao.IproductDAO;
import com.springboot.Pilotproject.dto.memberDTO;

@Controller
public class memberController {
	@Autowired
	private ImemberDAO dao;
	
	@Autowired
	private IproductDAO pdao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/")
	public String root() {
		return "redirect:mainPage";
	}
	
	@RequestMapping("/mainPage") // 메인페이지
	public String mainPage(Model model) {
		memberDTO dto = new memberDTO();
		dto = dao.findById("admin");
		model.addAttribute("mno",dto.getMno());
		model.addAttribute("listP", pdao.productList());
		return "mainPage";
	}
	
	@RequestMapping("/loginForm") // 로그인
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping("/loginError")
	public String loginError() {
		return "loginError";
	}
	
	@RequestMapping("/guest/memberWriteForm") // 입력폼
	public String memberWriteForm() {
		return "guest/memberWriteForm";
	}
	
	@RequestMapping("/guest/jusoPopup")
	public String jusoPopup() {
		return "guest/jusoPopup";
	}
	
	@RequestMapping("/memberWrite")
	public String memberWrite(@RequestParam("maddr1") String maddr1,
							  @RequestParam("maddr2") String maddr2,
							  @RequestParam("mtel1") String mtel1,
							  @RequestParam("mtel2") String mtel2,
							  @RequestParam("mtel3") String mtel3,
							  memberDTO dto) {
		
		dto.setMtel(mtel1+"-"+mtel2+"-"+mtel3);
		dto.setMaddr(maddr1+","+maddr2);
		dto.setMpasswd(passwordEncoder.encode(dto.getMpasswd()));
		
		dao.memberWrite(dto);
		
		return "redirect:mainPage";
	}
	
	@RequestMapping("/admin/memberlist") // 리스트
	public String memberList(Model model) {
		model.addAttribute("memberlist",dao.memberList());
		return "admin/memberlist";
	}
	
	@RequestMapping("/admin/memberView") // 상세정보
	public String memberView(@RequestParam("mid") String mid,
							 Model model) {
		model.addAttribute("view", dao.memberView(mid));
		return "admin/memberView";
	}
	
	@RequestMapping("/member/passwordCheckForm") // 비밀번호 확인폼
	public String passwordCheckForm(@RequestParam("mode") String mode,Model model) {
		model.addAttribute("mode", mode);
		return "member/passwordCheckForm";
	}
	
	@RequestMapping("/member/passwordCheck") // 비밀번호 확인
	public String passwordCheck(Authentication authentication,
								@RequestParam("mode") String mode,
								@RequestParam("mpasswd") String mpasswd,
								Model model) {
		String mid = authentication.getName();
		memberDTO dto = dao.findById(mid);
		
		if(dto != null && passwordEncoder.matches(mpasswd, dto.getMpasswd())) {
			if("update".equals(mode)) {
				model.addAttribute("update",dto);
				return "member/memberUpdateForm";
			} else if("delete".equals(mode)) {
				dao.memberDelete(mid);
				return "redirect:/logout";
			}
		}
		
		model.addAttribute("msg", "비밀번호가 틀렸습니다");
		model.addAttribute("mode",mode);
		
		return "member/passwordCheckForm";
	}
	
	@RequestMapping("/memberUpdate") //업데이트
	public String memberUpdate(@RequestParam("maddr1") String maddr1,
							  @RequestParam("maddr2") String maddr2,
							  @RequestParam("mtel1") String mtel1,
							  @RequestParam("mtel2") String mtel2,
							  @RequestParam("mtel3") String mtel3,
							  memberDTO dto) {
		
		dto.setMtel(mtel1+"-"+mtel2+"-"+mtel3);
		dto.setMaddr(maddr1+","+maddr2);
		dto.setMpasswd(passwordEncoder.encode(dto.getMpasswd()));
		
		dao.memberUpdate(dto);
		
		return "redirect:mainPage";
	}
}
