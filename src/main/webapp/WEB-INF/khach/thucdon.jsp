<%@ taglib uri="/struts-tags" prefix="s"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h1>Food list</h1>
	<s:if test='getMessage()"!=""'>
		<p>
			<s:property value="message" />
		</p>
	</s:if>
	<table>
		<tr>
			<th>Tên món ăn</th>
			<th>Hình ảnh</th>
			<th></th>
		</tr>
		<s:iterator var="food" value="foodlist">
		<tr>
			<td><s:property value="ten"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinh"/>'/></td>
<<<<<<< HEAD
			<td><a href='orderAction?idmonan=<s:property value="id"/>'>Đặt Món</a></td>
=======
			<td><a href='orderAction?idmonan=<s:property value="id"/>'>Đặt món</a></td>
>>>>>>> eedffc118d89c3fa2191a55ce9602f6ee99811e8
		</tr>
		</s:iterator>		
	</table>
</body>
</html>
