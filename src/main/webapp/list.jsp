<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%
List<PersonVo> personList = (List<PersonVo>) request.getAttribute("personList");
System.out.println(personList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>

	<h1>전화번호부</h1>

	<h2>리스트</h2>

	<p>등록된 전화번호 리스트 입니다.</p>
	<br>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td><%= personList.get(i).getName() %></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%= personList.get(i).getHp() %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%= personList.get(i).getCompany() %></td>
		</tr>
	</table>

	<br>
	<%
	}
	%>

	<br>
	<a href="">추가번호 등록</a>

</body>
</html>