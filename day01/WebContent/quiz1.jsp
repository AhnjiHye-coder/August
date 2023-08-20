<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>

<h1>quiz1.jsp</h1>
<hr>

<h3>두 정수의 덧셈 맞추기</h3>
<ul>
	<li>java.util.Random 클래스를 import하세요</li>
	<li>form 태그에서는  두 정수 n1, n2를 랜덤으로 가져오세요</li>
	<li>랜덤의 범위를 1 ~ 100 사이 입니다</li>
	<li>두 정수를 이용하여 식을 보여주고, 정답을 입력받기 위한 input을 준비합니다</li>
	<li>정답을 입력받는 파라티터의 이름은 answer입니다</li>
	<li>입력받은 answer가 맞으면 정답, 틀렸으면 오답으로 출력하세요</li>
	<li>answer를 입력받지 않은 상태에서는 정답 혹은 오답이 보여지면 안됩니다</li>
</ul>

<%!
	Random rd = new Random();

	int n1 = rd.nextInt(100) + 1;
	int n2 = rd.nextInt(100) + 1;
%>
<fieldset>
	<form>
		<p>
		<%=n1 %> + <%=n2 %> = 
		<input type="number" name="answer" placeholder="정답입력"></p>
		<p><input type="submit"></p>
	</form>
</fieldset>

<%

	String answer = request.getParameter("answer");
	String result = "";

	int a = n1 + n2;
	if(answer != null){
		int b = Integer.parseInt(answer);
		if(a == b){
			result = "정답";
			n1 = rd.nextInt(100) + 1;
			n2 = rd.nextInt(100) + 1;
		}
		else {
			result = "오답";
		}
		
	}

%>

</body>
</html>