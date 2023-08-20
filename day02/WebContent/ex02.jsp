<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="calculator.Calculator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>


<h3>HTTP Method를 이용하여 하나의 페이지에서 서로 다른 코드를 수행하게 만들 수 있다</h3>
<h3>request.getMethod() : <%= request.getMethod() %></h3>


<!--원래 input은 if가 없어도 실행되지만 Method의 효과를 보기 위해 if로 조건을 달아서 실행시켜본다  -->
<%

	if(request.getMethod().equals("GET")){ %> 
		<form method="POST">
			<h4>a의 b승 숫자를 계산 합니다</h4>
			<p><input type="number" name="n1" placeholder="n1" min="2" max="10"></p>
			<p><input type="number" name="n2" placeholder="n2" min="2" max="10"></p>
			<p><input type="submit" value="입력"></p>
		</form>	
<% }%>

<%if(request.getMethod().equals("POST")) { %>
<%
	int n1 = Integer.parseInt(request.getParameter("n1"));
	int n2 = Integer.parseInt(request.getParameter("n2"));
	Calculator calc = new Calculator();
	int answer = calc.pow(n1, n2);
%>
	<h3><%=n1 %><sub><%=n2 %></sub> = <%=answer %></h3>
	<a href="ex02.jsp"><button>다시!!</button></a>
	<!-- a태그는 항상 GET요청을 만들어 낸다 그래서 다시 입력할때는 GET으로 입력 받게 되고
	GET으로 입력 받아도 POST로 받아 올 수 있도록 Method를 사용하여 코드를 실행시킨다-->
<% } %>
</body>
</html>