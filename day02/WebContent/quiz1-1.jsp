<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="dataList.DataList" %>
<%! DataList data = new DataList(); %>

<%
	switch(request.getMethod()) {
	case "GET":
		// get방식으로 들어와서 post방식으로 진행되도록 설계를 한 것이다
%>

		<form method="POST">
			<p>
				<label><input type="radio" name="index" value="0">0번</label>
				<label><input type="radio" name="index" value="1">1번</label>
				<label><input type="radio" name="index" value="2">2번</label>
				<label><input type="radio" name="index" value="3">3번</label>
				<label><input type="radio" name="index" value="4">4번</label>
			</p>
			<input type="submit">
		</form>
		<% 
		break;
	case "POST":
		int index = Integer.parseInt(request.getParameter("index"));
		String result = data.get(index);
	%>
	<h3>이름 : <%=result.split(",")[0] %></h3>
	<h3>나이 : <%=result.split(",")[1] %></h3>
	<h3>성별 : <%=result.split(",")[2] %></h3>
	<a href="quiz1-1.jsp"><button>이전으로!</button></a>
	<%
	break;
	
	}
%>

</body>
</html>