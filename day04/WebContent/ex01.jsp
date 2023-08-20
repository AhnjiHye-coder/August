<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	form {
		margin : 30px auto;
		border: 2px solid black;
		width: 320px;
		padding: 20px;
		background-color: #fefefe;
		border-radius: 10px;
		box-shadow: 5px 5px 5px grey;
	}
	h3.exp {
		width: 279px;
		border: 1px silid black;
		height: 30px;
		padding: 10px;
		text-align: right;
		background-color: white;
		font-size: 1.5em;
		overflow: hidden;
	}
	div.flex {
		display: flex;
		flex-flow: wrap;
		width: 310px;
	}
	input[type="submit"] {
		width: 70px;
		height:60px;
		margin:3px;
		font-size: 1.5em;
	}
	</style>
</head>
<body>

<%!
	// 선언부는 값이 유지되는 변수를 선언 가능
	// 페이지가 새로고침되어도 유지되어야 하는 데이터를 보관
	// 지근까지 입력했던 수식(exp)
	
	String exp = "";
%>

<%
	// 여기서 화면에 나타날 데이터를 준비한다
	// 스트립틀릿이 먼저 데이터를 저장할 변수를 만들어주고
	// 함수, 객체의 메서드 호출 가능
	
	String btn = request.getParameter("btn");
	System.out.print("btn : " + btn);
	
	if("CE".equals(btn)){
		exp = "";
	}
	else if ("=".equals(btn))  { // =을 포함한다면 진입
		if(exp.contains(" "))  {	// = 다음에 빈 공간이라면 진입(contains : 특정 문자열이 포함되어있는지 확인하는 함수)
			String[] arr = exp.split(" "); // 빈 공간빼고 배열에 담기
			int n1 = Integer.parseInt(arr[0]);	
			String result = arr[1];
			int n2 = Integer.parseInt(arr[2]);
			switch(result){
			case "+" : exp = String.valueOf(n1 + n2);  			break;
			case "-" : exp = String.valueOf(n1 - n2);  			break;
			case "x" : exp = String.valueOf(n1 * n2);  			break;
			case "/" : exp = String.valueOf(n1 / (double)n2);  	break;
			}
		}
	}
	else {
		if((exp.endsWith(" ") && btn.startsWith(" ")) == false) {
			exp += btn != null ? btn : "";
		}
	}
%>

<h1>ex01.jsp</h1>
<hr>

<h3>이항 산술 연산이 가능한 간단 계산기 구현하기</h3>
	
	<form>
		<h3 class="exp"><%=exp %></h3>
			<div class="flex">
				<input type="submit" name="btn" value="7">
				<input type="submit" name="btn" value="8">
				<input type="submit" name="btn" value="9">
				<input type="submit" name="btn" value=" / ">
				<input type="submit" name="btn" value="4">
				<input type="submit" name="btn" value="5">
				<input type="submit" name="btn" value="6">
				<input type="submit" name="btn" value=" x ">
				<input type="submit" name="btn" value="1">
				<input type="submit" name="btn" value="2">
				<input type="submit" name="btn" value="3">
				<input type="submit" name="btn" value=" - ">
				<input type="submit" name="btn" value="0">
				<input type="submit" name="btn" value="CE">
				<input type="submit" name="btn" value="=">
				<input type="submit" name="btn" value=" + ">
			</div>
	</form>
	
	
</body>
</html>