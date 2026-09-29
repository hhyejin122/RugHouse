<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 폼</title>
<script language="javascript" src="/js/memberCheck.js"></script>
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
				    margin-top: 10px;
				}
	.text1{ width: 200px;
			padding: 5px;
			border: 1px solid #c9c9c9;
			border-radius: 8px;
			font-size: 15px;
			transition: 0.3s;
		}
	.text2{ width: 50px;
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
	<form name="member" method="post"  action="/memberUpdate">
	<input type="hidden" name="mid" value="${update.mid}">
		<table style="margin: auto; font-size: 16px; line-height:35px;">
			<tr>
				<td colspan="2"><h2>회원정보수정</h2></td>
			</tr>
			<tr>
				<td>아이디</td> <td>${update.mid}</td>
			</tr>
			<tr>
				<td>비밀번호</td> <td><input type="password" name="mpasswd" class="text1"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td> <td><input type="password" name="mpasswd2" class="text1"></td>
			</tr>
			<tr>
				<td>이름</td> <td>${update.mname}</td>
			</tr>
			<tr>
				<td>성별</td> <td>${update.mgender}</td>
			</tr>
			<tr>
				<td>주소</td> <td><input type="text" name="maddr1" readonly class="text1" 
				 value="${fn:split(update.maddr,',')[0]}">
				 <input type="button" value="주소검색" onclick="goPopup()"></td>
			</tr>
			<tr>
				<td>우편번호</td> <td><input type="text" name="mzipno" readonly class="text1" 
				 value="${update.mzipno}"></td>
			</tr>
			<tr>
				<td>상세주소</td> <td><input type="text" name="maddr2" readonly class="text1" 
				 value="${fn:split(update.maddr,',')[1]}"></td>
			</tr>
			<tr>
				<td>연락처</td> <td><input type="text" name="mtel1" class="text2" maxlength="3"
				 value="${fn:split(update.mtel,'-')[0]}">
				-<input type="text" name="mtel2" class="text2" maxlength="4" value="${fn:split(update.mtel,'-')[1]}">
				-<input type="text" name="mtel3" class="text2" maxlength="4" value="${fn:split(update.mtel,'-')[2]}"></td>
			</tr>
			<tr>
				<td>이메일</td> <td><input type="text" name="memail" class="text1" value="${update.memail}"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정하기"></td>
			</tr>
		</table>
	</form>
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>