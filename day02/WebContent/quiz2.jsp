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

<!-- 아래 form의 양식을 화면에 한줄씩 출력하도록 코드를 작성하세요 
required : 필수로 입력해야하는 input타입에 사용
autofocus : 마우스를 가져다 놓지 않아도 페이지가 열리고 텍스트를 입력하면 autofocus가 있는 곳에 바로 입력된다

-->
<form method="POST">
	<p><input type="text" name="id" placeholder="ID" required autofocus></p>
	<p><input type="password" name="pw" placeholder="Password" required ></p>
	<p><input type="text" name="name" placeholder="Name" required ></p>
	<p><input type="date" name="birth" required></p>
	<p>
		<label><input type="radio" name="gender" value="남성" required>남자</label>	
		<label><input type="radio" name="gender" value="여성" required>여자</label>	
	</p>
	<p>
		<select name="age" required>
			<option value="">-- 연령대 선택 --</option>
			<option value="10대">10</option>
			<option value="10대">20</option>
			<option value="10대">30</option>
			<option value="10대">40</option>
		</select>
	</p>
	<p><input type="submit" value="가입신청"></p>
</form>

<% request.setCharacterEncoding("UTF-8");%>


<h3><%=request.getParameter("id") %></h3>
<h3><%=request.getParameter("pw") %></h3>
<h3><%=request.getParameter("name") %></h3>
<h3><%=request.getParameter("gender") %></h3>
<h3><%=request.getParameter("age") %></h3>


</body>
</html>