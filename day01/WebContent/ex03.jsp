<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
<style>
	h3 > span {
		color: blue;
	}
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	thead {
		background-color: #dedede;
	}
	td, th {
		padding: 5px 10px;
		border: 1px solid grey;
		font-size: 1.5em;
	}
	tr > td:first-child {
		font-weight: bold;
		font-family: 'Consolas';
		color:orangered;
	}
</style>
</head>
<body>

<h1>ex03.jsp - 파라미터</h1>
<hr>

<h3>
	https://
	localhost
	:8080
	/day01
	/ex03.jsp
	<span>?name=이지은&age=31</span>
</h3>

<table>
	<tr>
		<td>request Method</td>
		<td>body 유무</td>
		<td>파라미터 형식</td>
	</tr>
	<tr>
	<!-- 간단한 정보를 전달할때 사용(주소창에 띄워짐) -->
		<td>GET</td>
		<td>X</td>
		<td>queryString, 주소창으로 파라미터를 전송한다</td>
	</tr>
	<tr>
	<!-- 길고 많은 데이터, 주소창에 띄우기 싫은 데이터 등 별도의 데이터를 전달 할 때 사용 -->
		<td>POST</td>
		<td>o</td>
		<td>form-data (urlencoded),별도의 공간으로 파라미터를 전송한다</td>
	</tr>
</table>












<fieldset>
	<legend>GET</legend>
	<form method="GET">
		<p><input type="text" name="p1" placeholder="입력"></p>
		<p><input type="submit"></p>
	</form>
</fieldset>

<fieldset>
	<legend>POST</legend>
	<form method="POST">
		<p><input type="text" name="p2" placeholder="입력"></p>
		<p><input type="submit"></p>
	</form>
</fieldset>

<%
	// 주소창을 총해서 전달하지 않으면, 인코딩 규칙이 달라서 글자가 꺠질 수 있다(POST일떄만 해당)
	request.setCharacterEncoding("UTF-8");

	// 모든 파라미터는 문자열(String)형식이다
	String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	
	out.print("<h3>p1 : " + p1 + "</h3>");
	out.print("<h3>p2 : " + p2 + "</h3>");

%>

</body>
</html>