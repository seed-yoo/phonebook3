<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%
List<PersonVo> personList = (List<PersonVo>) request.getAttribute("personList");
System.out.println(personList);
%>
<% 
int no = Integer.parseInt(request.getParameter("no")); 
System.out.println(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
    // 전달받은 personId 파라미터 가져오기
    String personId = request.getParameter("no");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

    
    int id = Integer.parseInt(personId);
    
	%>
	
	<h1>전화번호부</h1>

	<h2>수정폼</h2>

	<p>
		전화번호를 등록하려면<br> 아래 항목을 기입하고 "수정" 버튼을 클릭하세요
	</p>

	<form action="/phonebook3/pbc" method="get">
		
		<div>
			<label>번호(personId)</label> <input type="text" name="no" value="<%= id %>">
		</div>
		<div>
			<label>이름(name)</label> <input type="text" name="name" value="<%= name %>">
		</div>

		<div>
			<label>핸드폰(hp)</label> <input type="text" name="hp" value="<%= hp %>">
		</div>

		<div>
			<label>회사(company)</label> <input type="text" name="company" value="<%= company %>">
		</div>

		<input type="text" name="action" value="update"> <br>
		<button type="submit">수정</button>
	</form>

	<br>
	<br>
	<a href="">리스트페이지로 이동</a>

</body>
</html>