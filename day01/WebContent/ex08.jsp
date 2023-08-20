<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08.jsp</title>
</head>
<body>

<h1>ex08.jsp</h1>
<hr>

<form>
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="number" name="kor" placeholder="국어점수"></p>
	<p><input type="number" name="eng" placeholder="영어점수"></p>
	<p><input type="number" name="mat" placeholder="수학점수"></p>
	<p><input type="submit"></p>
</form>


<%

	if(request.getQueryString() != null) { // getQueryString은 쿼리문이 비어있지 않다면이라는 의미로 
		// 파라미터가 빈 공간이 아니라면 이라는 의미이다
		// request는 응답이라는 의미, 즉 응답을 받은 파라미터가 빈 공간이 아니라면 실행!
		
		String name = request.getParameter("name");
		// 문자열을 정수 형태로 변경하고 파라미터를 받는다
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		
		int total = kor + eng + mat;
		double avg = total / 3.0;
		String result = avg >= 60 ? "합격" : "불합격";
		
		String form = "%s 님의 평균은 %.2f입니다.   따라서, %s입니다";
		String message = String.format(form, name, avg, result);
		
		out.print(message);
	}
			
	


%>
</body>
</html>