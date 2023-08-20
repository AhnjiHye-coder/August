<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-forward.jsp</title>
</head>
<body>

<h1>ex05-forward.jsp</h1>
<hr>

<h3>
	forward는 서버에서 임의로 응답을 처리할때 페이지를 변경하는 기술<br>
	클라이언트는 1회만 요청하면 서버에서 다른 페이지에서 요청과 응답을 넘겨준다<br>
	요청과 응답을 넘겨받은 페이지에서는 기존 request를 그대로 사용할 수 있다<br>
	클라이언트가 주소를 변경하는 것이 아니라서, 주소창이 바뀌지 않는다<br>
	서버가 보유한 자원으로 포워드하기 때문에, 다른 서버로는 넘길 수 없다
</h3>

<%
	if(request.getMethod().equals("POST")){
		request.setCharacterEncoding("UTF-8");
		String url = request.getParameter("url");
		
		// request : (리퀘스트)요청한다
		// setAttribute :  값을 String값과 Object값으로 연결해서 가져온다
		
		request.setAttribute("test2", "제발 눈 좀 떠라");
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		// reqyest와 resopnse를 url에 지정된 페이지에게 같이 넘겨준다
		// 클라이언트가 요청을 하면 하나의 페이지 안에서 요청을 받는게 아닌, 
		// 만약 요청한 페이지에 없다면 요청된 정보가 있는 페이지에 바톤터치한다
		// 그럼 정보가 있는 페이지가 클라이언트에게 정보를 주는 방식이다
	}

%>


</body>
</html>