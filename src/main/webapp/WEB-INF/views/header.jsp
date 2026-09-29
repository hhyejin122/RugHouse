<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	.loginPart { float: right; margin-right: 50px; margin-top: 10px; position: relavate;}
	.login-btn {
				    width: 90px;
				    height: 30px;
				    background: #50B4FF;
				    color: white;
				    font-size: 16px;
				    font-weight: bold;
				    border: none;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				}
	.regi-btn {
				    width: 90px;
				    height: 30px;
				    background: #FFFFFF;
				    color: #0183ee;
				    font-size: 16px;
				    font-weight: bold;
				    border: 1px solid #0183ee;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				}
	.list-btn{
				    width: 80px;
				    height: 30px;
				    background: #50B4FF;
				    color: white;
				    font-size: 14px;
				    font-weight: bold;
				    border: none;
				    border-radius: 5px;
				    cursor: pointer;
				    transition: all 0.3s ease;
				    margin: 2px;
				}
	.logout-btn{
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
				    margin: 2px;
				}
		a:link{color:black; text-decoration:none;}
		a:visited{color:black; text-decoration:none;}
		a:hover{color: #0183ee; text-decoration:underline;}
		a:active{color: #0183ee; text-decoration:underline;}
</style>
</head>
<body>
	<table style="margin: auto;">
	<tr>
		<td><a href="/mainPage"><img src="/images/rughousebn.png" height="100"></a></td>
	</tr>
	</table>
	<a href="/mainPage"><img src="/images/logoimage.png" width="140" style="float: left;"></a>
	<span class="loginPart">
	<!-- 비회원 (익명)-->
		<sec:authorize access="isAnonymous()">
			&nbsp;<input type="button" value="로그인" class="login-btn" onclick="location.href='/loginForm';">
			&nbsp;<input type="button" value="회원가입" class="regi-btn" onclick="location.href='/guest/memberWriteForm';"> <br>
		</sec:authorize>
	<!-- 일반회원 -->
	<!-- access에 athority이름 쓰기 -->
		<sec:authorize access="hasRole('USER')">
			<sec:authentication property="principal.username"/>님 환영합니다. &nbsp;
			<input type="button" value="정보수정" class="list-btn" onclick="location.href='member/passwordCheckForm?&mode=update';">
			<input type="button" value="로그아웃" class="logout-btn" onclick="location.href='/logout';"> 
			<input type="button" value="회원탈퇴" class="logout-btn" onclick="location.href='/member/passwordCheckForm?&mode=delete';"> <br>
		</sec:authorize>	
	<!-- 관리자 -->
		<sec:authorize access="hasRole('ADMIN')">
			<sec:authentication property="principal.username"/>님 환영합니다. &nbsp;
			<input type="button" value="회원목록" class="list-btn" onclick="location.href='/admin/memberlist';">
			<input type="button" value="상품관리" class="list-btn" onclick="location.href='/product/productList';">
			<input type="button" value="로그아웃" class="logout-btn" onclick="location.href='/logout';"> <br>
		</sec:authorize>
	</span>
	<br><br>
	<hr>
	<table style="margin: auto;">
		<tr>
			<td style="width: 200px; font-size: 17px;"><a href="/">쇼 핑</a></td>
			<td style="width: 200px; font-size: 17px;"><a href="/">베스트</a></td>
			<td style="width: 200px; font-size: 17px;"><a href="/">게시판</a></td>
			<td style="width: 200px; font-size: 17px;"><a href="/">Q & A</a></td>
			<td style="width: 200px; font-size: 17px;"><a href="/">마이페이지</a></td>
		</tr>
	</table>
	<br>
</body>
</html>