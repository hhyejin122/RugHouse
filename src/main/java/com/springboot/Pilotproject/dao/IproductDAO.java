package com.springboot.Pilotproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.Pilotproject.dto.productDTO;

@Mapper
public interface IproductDAO {
	// 상품목록보기(select)
	public List<productDTO> productList();
	// 상품상세보기+수정폼
	public productDTO productView(int pno);
	// 상품등록(insert)
	public int productWrite(productDTO dto);
	// 상품정보수정(update)
	public int productUpdate(productDTO dto);
	// 상품삭제(delete)
	public int productDelete(int pno);
}
