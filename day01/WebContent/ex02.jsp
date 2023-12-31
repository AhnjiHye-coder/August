<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%--지시자 : import, 인코딩, 태그 추가 선언 등 페이지 전반에 걸친 설정 처리 --%>
<!-- page 지시자, include 지시자, taglib 지시자 3종류가 있음 -->
<%@ page import="java.text.SimpleDateFormat" %>

<!-- 선언부 -->
<!-- 필드 및 메서드를 선언한다(값을 유지시킬때마 사용한다) -->
<%!
	// 멤버필드 이므로 접근제한자 설정 가능
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public String toDateString() {
		Date today = new Date();
		String now = sdf.format(today);
		return now;
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>ex02.jsp</h1>
<hr>

<!-- 스크립틀릿, service() 함수 내부에 내용을 작성한다 -->
<!-- 일반적인 자바 코드에서 main() 함수의 역할이라고 생각하면 된다 -->
<%
	// 스크립틀릿 범위는 클래스의 멤버필드가 아니기 떄문에 접근제한자를 사용하지 않는다
	
	// 선언부에서 선언한 메서드를 호출할 수 있다
	String now = toDateString();
	String message = "오늘은" + now + "입니다";
	
	// 코드가 실행되는 컴퓨터(서버 ==  톰캣)에서 표준출력으로 출력한다
	System.out.print(message); // 콘솔창에 뜬다
	
	// 클라이언트에게 보내줄 응답(response)에 텍스트 형식으로 출력한다
	// 즉, HTML 태그를 작성하는 것과 같다
	out.print(message);	// 태그에 글자를 쓰는 것과 같다

%>
<!-- jsp 주석은 코드애서 보이지 않는다(톰캣이 주석을 무시한다) 하지만 HTML 주석은 문자열로 판단해서
	코드 결과에 보이게 된다
	표현식, 자바 변수 및 필드, 메서드의 반환값을 out.print()웹 문서로 출력한다(중간중간 값을 끼워넣을 떄 사용)-->
<h3>지금은<%=now %>입니다</h3>

</body>
</html>