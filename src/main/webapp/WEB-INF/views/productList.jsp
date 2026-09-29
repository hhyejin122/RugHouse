<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
<style>
	td{padding:5px;}
	a:link{color:black; text-decoration:none;}
	a:visited{color:black; text-decoration:none;}
	a:hover{color: #0183ee; text-decoration:none;}
	a:active{color: #0183ee; text-decoration:underline;}
	.regiProduct{
				    width: 120px;
				    height: 30px;
				    background: #329632;
				    color: white;
				    font-size: 15px;
				    font-weight: bold;
				    border: none;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				    margin-left: 200px;
				}
	.home-btn{
				    width: 120px;
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
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<br>
	<h2 style="margin-left: 200px;">상품 관리</h2>
	<table border="1" width="1000" style="border:1px solid #C9C9C9; margin-left: 200px; border-collapse:collapse;">
		<tr>
			<th>상품번호</th>
			<th>분 류</th>
			<th>상품명</th>
			<th>제조사</th>
			<th>가격</th>
			<th>재고수</th>
			<th>등록일</th>
		</tr>
		<c:forEach var="list" items="${pList}">
		<tr>
			<td>${list.pno}</td>
			<td>${list.pcategory}</td>
			<td><a href="/product/productView?pno=${list.pno}" >${list.pname}</a></td>
			<td>${list.pmade}</td>
			<td>${list.pprice}원</td>
			<td>${list.pstock}</td>
			<td><fmt:formatDate value="${list.pdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<input type="button" value="상품등록" class="regiProduct" onclick="location.href='/product/productWriteForm?mno=${mno}';">
	 <input type="button" value="홈으로" class="home-btn" onclick="location.href='/mainPage';">
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>