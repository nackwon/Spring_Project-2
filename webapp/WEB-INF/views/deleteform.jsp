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
	<form method="POST" action="/spring_guestbook/delete">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password">
				<input type="hidden" name="no" value="${param.no }">
				</td>
				<td><input type="submit" value="확인"></td>
				<td><a href="/spring_guestbook/listform">메인으로 돌아가기</a></td>
			</tr>
		</table>
	</form>
</body>
</html>