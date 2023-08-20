<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-add.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	// 1) 파라미터를 받아서	
	String param = request.getParameter("param");
	
	// 2) 파라미터가 null(없으면)이면 list.jsp로 가서 목록을 생성
	if(param == null){
		response.sendRedirect("ex06-list.jsp");
		return;
	}
	
	// 3) 리스트를 불러왔다면
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
	
	// 4) 리스트에 파라미터로 받은 정보를 추가한다
	list.add(param);

	// 현재 추가페이지의 목적은 모두 완료했고, 추가한 후의 목록을 다시 띄워야 한다
	// 하지만 여기서 똑같은 걸 작성하지 싫기 때문에 목록을 띄우는 페이지로 다시 가서 띄우도록 한다
	response.sendRedirect("ex06-list.jsp");
	
%>

</body>
</html>