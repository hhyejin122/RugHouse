package com.springboot.Pilotproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.Pilotproject.dto.memberDTO;

@Mapper
public interface ImemberDAO {
	// 회원목록보기(select)
	public List<memberDTO> memberList();
	// 회원상세보기(+수정폼)
	public memberDTO memberView(String mid);
	// 회원등록(insert)
	public int memberWrite(memberDTO dto);
	// 회원정보수정(update)
	public int memberUpdate(memberDTO dto);
	// 회원정보삭제(delete)
	public int memberDelete(String mid);
	// 로그인용 조회
	public memberDTO findById(String mid);
}
