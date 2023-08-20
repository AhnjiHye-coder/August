<%@page import="ex03.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-result.jsp</title>
</head>
<body>

<h1>ex03-result.jsp</h1>
<hr>

<h3>검색 결과</h3>

<%
	// 3. 만들어진 데이터를 받고 화면에 출력한다
	// 데이터를 받는 건 데이터를 만드는 곳에서 현재 페이지를 연결해준다
	Movie date = (Movie)session.getAttribute("date");
	if(date != null) { %>

<%-- 앞에 있는 것은 null이면 문제가 생긴다. 즉, 앞에 null이 오면 안된다 --%>
<h4>제목 : <%=date.getTitle() %></h4>
<h4>개봉 일자 : <%=date.getDate() %></h4>
<h4>개봉 누적 관객 수 : <%=date.getViewCount() %></h4>

<% } // end of if
	else {%>
<h4>검색 결과가 없습니다</h4>
<% } // end of else %>

<p><a href="ex03-form.jsp"><button>다시!</button></a>

</body>
</html>