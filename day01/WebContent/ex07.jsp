<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>

<h1>ex07.jsp - 배열의 특정 요소만 불러오기</h1>
<hr>

<%!

	String[] arr = {
		"이지은,31,여성",
		"홍진호,40,남성",
		"나단비,5,여성",
		"김희철,41,남성",
		"김지수,28,여성",
	};
%>

<form>
	<select name="index" required>
		<option value="">--- 번호 입력 ---</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
	</select>
	<input type="submit">
</form>

<%
	
	// 파라미터를 사용했다는 건 index의 전체 정보가 넘어오는게 아니라 input으로
	// 선택된 번호가 넘어오는 것이다
	// 파라미터로 받은 index를 i에 넣어주고
	// 그 i는 arr배열에 대입한다
	// 그리고 ,을 기준으로 나눠서 출력한다
	String index = request.getParameter("index");
	String data = "";
	
	if(index != null) {
		int i = Integer.parseInt(index) -1;
		data = arr[i];
	}
	%>
	<h3>이름 : <%=data.split(",")[0] %></h3>
	<h3>나이 : <%=data.split(",")[1] %></h3>
	<h3>성별 : <%=data.split(",")[2] %></h3>	
	<%
	
	
%>


</body>
</html>