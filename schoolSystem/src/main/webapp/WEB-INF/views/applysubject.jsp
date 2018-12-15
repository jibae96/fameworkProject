<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h3>수강 신청하기</h3>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate"
		modelAttribute="subject">
		<table class="formtable">
			<tr id="hidden" style="display:none;">
				<td class="label">수강년도:</td>
				<td><sf:input class="control" type="text" path="attendyear" value="2019" /><br />
					<sf:errors path="attendyear" class="error" /></td>
			</tr>
			<tr id="hidden" style="display:none;">
				<td class="label">학기:</td>
				<td><sf:input class="control" type="text" path="term" value="1" /><br />
					<sf:errors path="term" class="error" /></td>
			</tr>
			<tr>
				<td class="label">과목코드:</td>
				<td><sf:input class="control" type="text" path="subcode" /><br />
					<sf:errors path="subcode" class="error" /></td>
			</tr>
			<tr>
				<td class="label">과목명:</td>
				<td><sf:input class="control" type="text" path="subname" /><br />
					<sf:errors path="subname" class="error" /></td>
			</tr>
			<tr>
				<td class="label">구분:</td>
				<td><sf:input class="control" type="text" path="classsort" /><br />
					<sf:errors path="classsort" class="error" /></td>
			</tr>
			<tr>
				<td class="label">학점:</td>
				<td><sf:input class="control" type="text" path="score" /><br />
					<sf:errors path="score" class="error" /></td>
			</tr>

			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" value="신청하기" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>