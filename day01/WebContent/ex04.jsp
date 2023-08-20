<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>

<h1>ex04-jsp</h1>
<hr>

<h3>form태그의 method 속성을 생략하면 GET이다</h3>
<form>
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="number" name="age" min="0" max="100" placeholder="나이"></p>
	<p><input type="submit"></p>
</form>

<%
	//위  input이 post의 형태이기 때문에 글자가 깨지지 않도록 설정했다
	request.setCharacterEncoding("UTF-8");

	// 파라미터를 쓰는 이유는 문서개수가 작아지게 해주기 때문이다
	// 하나의 문서가 보다 많은 작업을 처리할 수 있게 해준다
	
	// 파라미터는 클라이언트로 부터 입력 받은 (전송받은) 글자
	// 파라미터가 없으면 request.getParameter()의 결과는 null이다
	// input형식의 name에 있는 값과 getParameter의 괄호안에 있는 값이 일치해야 한다
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	int a = 0;
	if(age != null){
		a = Integer.parseInt(age);
		out.print("<h3>" + name + "님의 나이는 " + age + "살 입니다</h3>");
		out.print("<h3>" + age + "님의 나이는" + (a >= 20 ? "성인" : "미성년자") + "입니다</h3>");
		out.print("<h3>queryString : " + request.getQueryString() + "</h3>");
		// 변수이름 + 변수 값으로 전달되며 문자형식으로 전달된다(+가 뜨는건 띄어쓰기를 의미한다)
	}

%>


</body>
</html>