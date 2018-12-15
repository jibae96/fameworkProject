<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<h3>학기별 교과목 리스트 보기</h3>
	<table class="formtable">
		<tr>
			<th>수강년도</th>
			<th>학기</th>
			<th>과목코드</th>
			<th>과목명</th>
			<th>구분</th>
			<th>학점</th>
		</tr>
		<c:forEach var="subject" items="${subjects}">
			<c:if test="${subject.attendyear == '2016'}">
				<c:if test="${subject.term == '2'}">
					<tr>
						<th>${subject.attendyear}</th>
						<th>${subject.term}</th>
						<th>${subject.subcode}</th>
						<th>${subject.subname}</th>
						<th>${subject.classsort}</th>
						<th>${subject.score}</th>
					</tr>
				</c:if>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>