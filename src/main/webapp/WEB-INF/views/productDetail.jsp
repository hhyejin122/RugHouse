<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<style>
	.pimage{padding:30px;}
	.pdesc{line-height:30px; width:1100px; margin-left: 120px; margin-top: 50px;}
	.buy-btn {
			    width: 220px;
			    height: 55px;
			    background: #50B4FF;
			    color: white;
			    font-size: 20px;
			    font-weight: bold;
			    border: none;
			    border-radius: 10px;
			    cursor: pointer;
			    box-shadow: 0 4px 12px rgba(0, 0, 200, 0.3);
			    transition: all 0.3s ease;
			    margin: 10px;
			}
		.cart-btn {
			    flex: 1;
			    width: 100px; height: 55px;
			    background: #ffffff;
			    color: #0064FF;
			    font-size: 16px;
			    font-weight: 600;
			    box-shadow: 0 2px 8px rgba(0, 0, 200, 0.3);
			    border: 2px solid #0064FF;
			    border-radius: 10px;
			    cursor: pointer;
			    transition: all 0.3s ease;
					}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
		<table class="pdesc">
			<tr>
				<td rowspan="5" width="100"><img src="/images/${pdetail.pfile}" width="400" height="400" class="pimage"></td>
				<td rowspan="5" width="50"> </td>
				<th width="150"><br><br>상품명 </th> <td><br><br>| ${pdetail.pname}</td>
			</tr>
			<tr>
				<th>제조사 </th> <td>| ${pdetail.pmade}</td>
			</tr>
			<tr>
				<th>가&nbsp;&nbsp;&nbsp;격 </th> <td>| <s>${pdetail.pprice} 원</s>
				 <b style="color:red;">${Math.round(pdetail.pprice*0.9)} 원 &nbsp;&nbsp;10% down↓</b></td>
			</tr>
			<tr>
				<th>&nbsp;&nbsp;&nbsp;상품설명</th> <td><br>| ${pdetail.pdesc}</td>
			</tr>
			<tr>
				<td> </td>
				<td style="padding: 10px;">
				 <input type="button" value="주문하기" class="buy-btn">
				 <input type="button" value="장바구니" class="cart-btn">
				</td>
			</tr>
			</table>
			<br><br><br>
			<table border="1" style="border-collapse: collapse; margin-left: 200px; width:1000px;">
				<tr>
					<td style="font-size: 20px;  padding: 10px;"><b>review</b></td>
				</tr>
				<tr>
					<td height="100"> </td>
				</tr>
			</table>
	<br>
	<%@ include file="footer.jsp" %>
</body>
</html>