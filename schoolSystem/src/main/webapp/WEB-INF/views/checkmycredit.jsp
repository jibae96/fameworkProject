<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
th {
	border: 1px solid #444444;
	padding: 10px;
}

td {
	border: 1px solid #444444;
	padding: 10px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>학년 학기별 총 학점</h3>
	<table class="formtable">
		<tr>
			<th>수강년도</th>
			<th>학기</th>
			<th>과목코드</th>
			<th>과목명</th>
		</tr>
		<tr>
			<th>2016</th>
			<th>1</th>
			<th>16</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit0">링크</a></td>
		 <tr>
			<th>2016</th>
			<th>2</th>
			<th>18</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit1">링크</a></td>
		</tr>
		<tr>
			<th>2017</th>
			<th>1</th>
			<th>18</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit2">링크</a></td>
		</tr>
		<tr>
			<th>2017</th>
			<th>2</th>
			<th>17</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit3">링크</a></td>
		</tr>
		<tr>
			<th>2018</th>
			<th>1</th>
			<th>18</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit4">링크</a></td>
		</tr>
		<tr>
			<th>2018</th>
			<th>2</th>
			<th>18</th>
			<td align="center"><a href="${pageContext.request.contextPath}/findmycredit5">링크</a></td>
		</tr>
	</table>
</body>
</html>