<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<style>
	td{padding:5px;}
	a:link{color:black; text-decoration:none;}
	a:visited{color:black; text-decoration:none;}
	a:hover{color: #0183ee; text-decoration:none;}
	a:active{color: #0183ee; text-decoration:underline;}
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
				    margin-left: 300px;
				}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<br>
	<h2 style="margin-left: 300px;">회원 목록</h2>
	<table border="1" width="800" style="border:1px solid #C9C9C9; margin-left: 300px; border-collapse:collapse;">
		<tr>
			<th>회원번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>성별</th>
			<th>가입일</th>
			<th>권한</th>
		</tr>
		<c:forEach var="list" items="${memberlist}">
		<tr>
			<td>${list.mno}</td>
			<td><a href="/admin/memberView?mid=${list.mid}" >${list.mid}</a></td>
			<td><a href="/admin/memberView?mid=${list.mid}" >${list.mname}</a></td>
			<td>${list.mgender}</td>
			<td><fmt:formatDate value="${list.mdate}" pattern="yyyy-MM-dd"/></td>
			<td>${list.mauthority}</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<input type="button" value="홈으로" class="home-btn" onclick="location.href='/mainPage';">
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>