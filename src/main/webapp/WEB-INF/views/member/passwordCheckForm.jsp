<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인 폼</title>
<style>
	input[type="submit"]{
				    width: 400px;
				    height: 50px;
				    border: none;
				    border-radius: 8px;
				    background: #0183ee;
				    color: white;
				    font-size: 16px;
				    cursor: pointer;
				    transition: 0.3s;
				    margin-top: 5px;
				}
	.text1{ width: 200px;
			padding: 5px;
			border: 1px solid #c9c9c9;
			border-radius: 8px;
			font-size: 15px;
			transition: 0.3s;
		}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<br>
	<form name="passwordCheckForm" method="post" action="/member/passwordCheck">
		<input type="hidden" name="mode" value="${mode}">
		<table style="margin: auto; font-size: 16px; line-height:35px;">
			<tr>
				<td colspan="2"><h3>비밀번호 확인</h3></td>
			</tr>
			<tr>
				<td colspan="2" style="color: red;">* 회원정보 수정과 회원 탈퇴를 위해 비밀번호를 입력해주세요.</td>
			</tr>
			<tr>
				<td height="50">비밀번호 : </td> <td><input type="password" name="mpasswd" class="text1"> </td>
			</tr>
			<tr>
				<td colspan="2" height="50"> <input type="submit" value="비밀번호 전송"> </td>
			</tr>
		</table>
	</form>
	<c:if test="${not empty msg}">
		<p style="color:red;font-weight:bold; margin-left: 400px;" >${msg}</p>
	</c:if>
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>