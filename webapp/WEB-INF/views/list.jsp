<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/spring_guestbook/write" method="POST">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br />
	
	<c:forEach items="${requestScope.list }" var="list">
		<table width=510 border=1>
			<tr>
				<td>${list.no }</td>
				<td>${list.name }</td>
				<td>${list.reg_date }</td>
				<td><a href="/spring_guestbook/deleteform?no=${list.no }">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4>${list.content }
			</tr>
		</table>
		<br />
	</c:forEach>

</body>
</html>