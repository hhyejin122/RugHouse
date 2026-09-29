<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	.loginBody{margin: auto; font-size:16px; line-height:35px;}
	input[type="submit"]{
				    width: 350px;
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
	input[type="reset"]{
				    width: 400px;
				    height: 30px;
				    border: 1px solid gray;
				    border-radius: 8px;
				    background: #FFFFFF;
				    color: gray;
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
</style>
</head>
<body onload="document.login.mid.focus();">
	<%@ include file="header.jsp" %>
	<br>
	<form name="login" method="post" action="/j_spring_security_check">
		<table  class="loginBody">
			<tr>
				<td colspan="2" height="100"><h2>로그인</h2></td>
			</tr>
			<tr>
				<td width="100">아이디 </td> <td><input type="text" name="mid" class="text1"></td>
			</tr>
			<tr>
				<td>비밀번호 </td> <td><input type="password" name="mpasswd" class="text1"></td>
			</tr>
			<tr>
				<td></td>
				<td style="font-size: 13px;"> 아이디 찾기 · 비밀번호 찾기</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		</table>
		<br>
		
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>