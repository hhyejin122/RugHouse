<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세정보</title>
<style>
	td{padding: 5px;}
	.list-btn{
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
				}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<br>
	<h3 style="margin-left: 300px;">회원 정보</h3>
	<table border="1" width="600" style="border:1px solid #C9C9C9; margin-left: 300px; border-collapse:collapse;">
		<tr>
			<td>회원번호</td> <td>${view.mno}</td>
		</tr>
		<tr>
			<td>아이디</td> <td>${view.mid}</td>
		</tr>
		<tr>
			<td>이 름</td> <td>${view.mname}</td>
		</tr>
		<tr>
			<td>성 별</td> <td>${view.mgender}</td>
		</tr>
		<tr>
			<td>주 소</td> <td>${view.maddr}</td>
		</tr>
		<tr>
			<td>우편번호</td> <td>${view.mzipno}</td>
		</tr>
		<tr>
			<td>연락처</td> <td>${view.mtel}</td>
		</tr>
		<tr>
			<td>이메일</td> <td>${view.memail}</td>
		</tr>
		<tr>
			<td>가입일</td> <td><fmt:formatDate value="${view.mdate}" pattern="yyyy년 MM월 dd일"/></td>
		</tr>
		<tr>
			<td>권한</td> <td>${view.mauthority}</td>
		</tr>
	</table>
	<br>
	<input type="button" value="목록으로" class="list-btn" style="margin-left: 300px;" onclick="location.href='/admin/memberlist';">
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>