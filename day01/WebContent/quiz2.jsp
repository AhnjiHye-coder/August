<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>

<h1>quiz2.jsp</h1>
<hr>

<ul>
	<li>날짜를 입력 받아서, yyyy년 MM월 dd일 형식의 문자열로 바꿔서 출력하세요</li>
</ul>


<%
	String n1 = request.getParameter("birth");

	String answer = "";
	String[] arr = null;
	
	if(n1 != null) {
		arr = n1.split("-"); 
		answer = arr[0] + "년" + arr[1] + "월" + arr[2] + "일";	
	}
	
%>

<form>
	<p><input type="date" name="birth" placeholder="날짜 입력"></p>
	<p><input type="submit" value="입력"></p>
</form>

<h3><%=answer %></h3>



</body>
</html>