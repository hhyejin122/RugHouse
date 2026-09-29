<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
	.productTitle{text-align:center;}
	.madename{color:gray; font-size:13px;}
	td{font-size:14.5px;}
	.sales{color:red;}
	a:link{color:black; text-decoration:none;}
	a:visited{color:black; text-decoration:none;}
	a:hover{color: #0183ee; text-decoration:none;}
	a:active{color: #0183ee; text-decoration:underline;}
</style>
	<br>
	<br>
	<table style="margin: auto;">
		<tr>
		<c:forEach var="lists" items="${listP}" varStatus="status">
			<td class="productTitle" width="250">
				<a href="/productDetail?pno=${lists.pno}"><img src="/images/${lists.pfile}" width="180" height="180"></a> <br>
				<a href="/productDetail?pno=${lists.pno}"><b>${lists.pname}</b></a> <br>
				<s>${lists.pprice} 원</s><br>
				<span class="sales"><b>${Math.round(lists.pprice*0.9)} 원</b></span> <br>
				<span class="madename">${lists.pmade}</span> <br>
				<br>
				<br>
			</td>
			<c:if test="${(status.index + 1) % 5 == 0}">
			<tr></tr>
			</c:if>
		</c:forEach>
		</tr>
	</table>