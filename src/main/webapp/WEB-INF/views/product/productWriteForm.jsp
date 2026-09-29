<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 폼</title>
<script src="/js/productCheck.js"></script>
<style>
	.formbody{margin: auto; font-size:16px; line-height:35px;}
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
	.text1{ width: 270px;
			padding: 5px;
			border: 1px solid #c9c9c9;
			border-radius: 8px;
			font-size: 15px;
			transition: 0.3s;
		}
	textarea{   width: 270px;
				padding: 5px;
				border: 1px solid #c9c9c9;
				border-radius: 8px;
				font-size: 15px;
				transition: 0.3s;}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<br>
	<form name="product" method="post" action="/productWrite" enctype="multipart/form-data">
		<table  class="formbody">
			<tr>
				<td colspan="2"><h2>상품 등록</h2></td>
			</tr>
			<tr>
				<td width="100">분 류</td>
				<td>
				<select name="pcategory"  class="text1">
					<option value="">선택하세요</option>
					<option value="여름러그">여름러그</option>
					<option value="원형러그">원형러그</option>
					<option value="사각러그">사각러그</option>
					<option value="비정형러그">비정형러그</option>
					<option value="발매트">발매트</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>상품명</td> <td><input type="text" name="pname" class="text1"></td>
			</tr>
			<tr>
				<td>제조사</td> <td><input type="text" name="pmade" class="text1"></td>
			</tr>
			<tr>
				<td>가 격</td> <td><input type="text" name="pprice" class="text1"></td>
			</tr>
			<tr>
				<td>상품설명</td> <td><textarea name="pdesc" rows="5" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>재고수</td> <td><input type="text" name="pstock" class="text1"></td>
			</tr>
			<tr>
				<td>이미지</td> <td><input type="file" name="pUpload"></td>
			</tr>
			<tr>
				<td colspan="2" height="50"><input type="submit" value="상품등록" onclick="return productCheck();">
				<br> <input type="reset" value="다시쓰기"></td>
			</tr>
		</table>
		<!-- <input type="hidden" name="mno" value="${mno}"> -->
		<br>
	</form>
	<br>
	<%@ include file="../footer.jsp" %>
</body>
</html>