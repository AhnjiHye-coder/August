<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-redirect.jsp</title>
</head>
<body>

<h1>ex04-redirect.jsp</h1>
<hr>

<h3>클라이언트에게 새로 요청할 주소를 "지정"해준다,
지정해 준다는 것은 개발자의 입장에서 클라이언트가 요청하는 페이지를 선사하고
정보가 유지될 수 있도록 코드를 구성하는 것이다, 그러기 위해서 넣어줘야하는 코드가
response.sendRedirect(url);의 부분인 것이다</h3>

<h3>클라이언트가 스스로 요청하기 때문에 서버가 아니더라도 다른 위치로 이동할 수 있다</h3>
<h3>새로운 요청이 만들어지기 때문에, 기존 resqust에 담겨있던 parameter, attribute는 사용할 수 없다 </h3>


<form method="POST">
	<input type="text" name="url" placeholder="url">
	<input type="submit" value="이동"> 
</form>

<%
	if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		// 파라미터로 클라이언트강 요청한 값을 유지되게(request) 처리하고(getParameter)
		String url = request.getParameter("url"); 
		
		response.sendRedirect(url);
		// redirect는 주소 형식에 따라 현재 도메인 내부의 다른 페이지를 요청할 수 있고
		// 다른 도메인의 경로를 요청할 수도 있다
		// 주소창에 입력하는 형식대로 입력하면 된다
		// redurect를 받은 이후 새로 마늗ㄹ어지는 요청은 주소만 지정하여 GET방식이다
	}

%>
</body>
</html>