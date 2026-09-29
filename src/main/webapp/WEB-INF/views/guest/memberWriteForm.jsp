<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
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
	<form name="member" method="post" action="/memberWrite">
		<table style="margin: auto; font-size: 16px; line-height:35px;">
			<tr>
				<td><h2>회원가입</h2></td>
			</tr>
			<tr>
				<td width="100">아이디</td> <td><input type="text" name="mid" class="text1"></td>
			</tr>
			<tr>
				<td>비밀번호</td> <td><input type="password" name="mpasswd" class="text1"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td> <td><input type="password" name="mpasswd2" class="text1"></td>
			</tr>
			<tr>
				<td>이름</td> <td><input type="text" name="mname" class="text1"></td>
			</tr>
			<tr>
				<td>성별</td> <td><input type="radio" name="mgender" value="남성" >남성
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="mgender" value="여성">여성</td>
			</tr>
			<tr>
				<td>주소</td> <td><input type="text" name="maddr1" readonly class="text1">
				 <input type="button" value="주소검색" onclick="goPopup()"></td>
			</tr>
			<tr>
				<td>우편번호</td> <td><input type="text" name="mzipno" readonly class="text1"></td>
			</tr>
			<tr>
				<td>상세주소</td> <td><input type="text" name="maddr2" readonly class="text1"></td>
			</tr>
			<tr>
				<td>연락처</td> <td><input type="text" name="mtel1" maxlength="3" class="text2">
				- <input type="text" name="mtel2" maxlength="4" class="text2">
				- <input type="text" name="mtel3" maxlength="4" class="text2"></td>
			</tr>
			<tr>
				<td>이메일</td> <td><input type="text" name="memail" class="text1"></td>
			</tr>
			<tr>
				<td colspan="2" height="100"> <input type="submit" value="가입하기" onclick="return memberCheck();"><br>
					<input type="reset" value="가입취소" onclick="history.back();"></td>
			</tr>
		</table>
		<br>
		
	</form>
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>