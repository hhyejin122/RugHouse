<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<style>
	td{padding: 5px;}
	.list-btn{
				    width: 100px;
				    height: 30px;
				    background: #50B4FF;
				    color: white;
				    font-size: 15px;
				    font-weight: bold;
				    border: none;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				    margin-left: 10px;
				}
	.delete-btn{
				    width: 80px;
				    height: 30px;
				    background: #E50000;
				    color: white;
				    font-size: 14px;
				    font-weight: bold;
				    border: none;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				    margin-left: 20px;
				}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<br>
	<h2 style="margin-left: 300px">상품 상세 정보</h2>
	<table border="1" width="700" style="border:1px solid #C9C9C9; margin-left: 300px; border-collapse:collapse;">
		<tr>
			<td colspan="4" style="text-align: center;"><img src="/images/${pview.pfile}" width="500" height="300"></td>
		</tr>
		<tr>
			<td width="80">상품번호</td>
			<td>${pview.pno}</td>
			<td width="80">분 류</td>
			<td>${pview.pcategory}</td>
		</tr>
		<tr>
			<td width="80">상품명</td>
			<td colspan="3">${pview.pname}</td>
		</tr>
		<tr>
			<td width="80">제조사</td>
			<td colspan="3">${pview.pmade}</td>
		</tr>
		<tr>
			<td width="80">가 격</td>
			<td>${pview.pprice}</td>
			
			<td width="80">재고수</td>
			<td>${pview.pstock}</td>
		</tr>
		<tr>
			<td colspan="4">${pview.pdesc}</td>
		</tr>
		<tr>
			<td>등록일</td>
			<td><fmt:formatDate value="${pview.pdate}" pattern="yyyy-MM-dd"/></td>
			<td>파 일</td>
			<td>${pview.pfile}</td>
		</tr>
	</table>
	<br>
	<table style="margin-left: 300px;">
	<tr> <td>
	<input type="button" value="목록으로" class="list-btn" onclick="location.href='/product/productList';">
	 <input type="button" value="상품수정" class="list-btn" onclick="location.href='/productUpdateForm?pno=${pview.pno}';">
	  <input type="button" value="상품삭제" class="delete-btn" onclick="location.href='/productDelete?pno=${pview.pno}';">
	</td> </tr>
	</table>
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>