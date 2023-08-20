<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-attribute.jsp</title>
<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
		margin-bottom: 20px;
	}
	td, th {
		padding: 10px;
		border: 1px solid grey;
	}
	thead {
		background-color: #dedede;
	}
</style>
</head>
<body>

<h1>ex02-attribute.jsp</h1>
<hr>

<%-- attribute는 내 코드의 데이터를  유지시키고 싶은 범위를 설정하는 것이다
나는 이를 정보 유지를 시킬 수 있는 옵션이라고 간단하게 생각해보겠다 --%>
<h3>
	parameter가 사용자에게 입력받은 값이라면 <br>
	attribute는 개발자가 만들어서 서버에 저장하는 값이다<br>
	모든 타입의 객체를 저장할 수 있고, <br>
	어디에 저장하냐에 따라서 유효범위가 달라질 수 있다
	
</h3>

<table>
	<thead>
		<tr>
			<th>내장 객체</th>
			<th>유효 범위</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>pageContext</td>
			<td>현재 jsp 내부에서 유효하다</td>
		</tr>
		<tr>
			<td>request</td>
			<td>
				현재 요청 내에서 유효하다
				forward를 하면 다음 페이지에서도 유효하다
			</td>
		</tr>
		<tr>
			<td>session</td>
			<td>현재 사용자의 접속이 유지되는 동안 유효하다(한쪽에서 강제로 끊지 않는 이상 유효하다. 단, 사용자 각각의 세션이 있다)</td>
		</tr>
		<tr>
			<td>application</td>
			<td>
				현재 서버가 종료되기 전가지 유효하다
				(모든 사용자가 모든 페이지에 동일하게 접근할 수 있고 가장 넓은 범위를 가지고 있다)
			</td>
		</tr>
	</tbody>
</table>

<table>
	<thead>
		<tr>
			<th>함수</th>
			<th>내용</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>내장 객체. setAttribute(String name, Object o)</td>
			<td>지정한 내장 객체에 name과 o을 연결하여 저장한다</td>
		</tr>
		 <tr>
		 	<td>Object 내장객체. getAttribte(String name)</td>
		 	<td>지정한 name으로 객체o를 반환받는다</td>
		 </tr>
		 <tr>
		 	<td>void 내장 객체 remoceAttribute(String name)</td>
		 	<td>지정한 name으로 저장된 객체를 제거한다</td>
		 </tr>
	</tbody>
</table>

<%

// 각 정보를 유지시키는 것을 정하고 객체 2개를 연결시킨다
	pageContext.setAttribute("test1", "이지은");
	request.setAttribute("test2", "홍진호");
	session.setAttribute("test3", "나단비");
	application.setAttribute("test4", "Hello world java");
	
	// 대입 연산은 양쪽 반환값을 맞춰야 한다(기본)
	// 그래서 test1을 그냥 입력하면 Object타입이기 떄문에 오류 발생
	// 그러므로 타입을 String로 맞춰준다
	
	String test1 = (String)pageContext.getAttribute("test1");
	String test2 = (String)request.getAttribute("test2");
	String test3 = (String)session.getAttribute("test3");
	String test4 = (String)application.getAttribute("test4");
	
	// 저장한 내장 객체에서 불러와야 한다(저장한 컨텐트가 아니라서 오류)
	// test4는 pageContext로 저장하지 않고 application으로 저장했기 때문에 오류!
	String test = (String)pageContext.getAttribute("test4");
	
%>

<%--표현식이나 out.print()를 이용하면 다운캐스팅 없이 문자열 형태로 출력한다
반드시 저장한 컨텐트(컨테이너)에서 꺼내와야 한다 --%>
<h3>test1 : <%=pageContext.getAttribute("test1") %></h3>
<h3>test2 : <%=test2 %></h3>
<h3>test3 : <%=session.getAttribute("test3") %></h3>
<h3>test3 : <%=test3 %></h3>
<!--2번째 값만 가져오고 싶을때 split로 "빈칸"을 기준으로 뒤에 index만 가져온다는 의미  -->
<h3>test4.split(" ") : <%=((String)application.getAttribute("test4")).split(" ")[2] %></h3>
<h3>test : <%=test %></h3>


</body>
</html>