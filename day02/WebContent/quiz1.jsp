<%@page import="dataList.DataList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>

<h1>quiz1.jsp</h1>
<hr>

<%--
	dataList 객체를 생성해두고
	파라미터를 입력 받아서
	문자열의 내용을 출력하는 코드를 작성하세요
	request.getMathod()를 활용하여
	GET/POST일 경우를 현재 페이지에 모두 작성하세요
 --%>
 <!-- required : 리콰이얼 -->
 <% if(request.getMethod().equals("GET")) { %>
	<form method="POST">
		 <select name="index" required> 
		 	<option value="">-- 번호 선택 --</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		 </select>
		 <input type="submit">
	</form>

<%  }%>

<% if(request.getMethod().equals("POST")) { %>
<%
		String index = request.getParameter("index");
		String answer = "";
		
		String name = "";
		String age = ""; // 문자열에서 잘라서 가져오는 것이기 때문에 String로 변수 생성
		String gender = "";
		
		if(index != null ){
			int i = Integer.parseInt(index) -1;// 값이 들어있는 arr의 index와 맞춰준다				
			DataList dl = new DataList();
			
			answer = dl.get(i);
			
			name = answer.split(",")[0];
			age = answer.split(",")[1];
			gender = answer.split(",")[2];
			
		}%>
		
		<h3>이름 : <%=name %></h3>
		<h3>나이 :  <%=age %></h3>
		<h3>성별 : <%=gender %></h3>
		<a href="quiz1.jsp"><button>다시 입력</button></a>
<%   }%>
</body>
</html>