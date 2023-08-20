<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
</head>
<body>

<%!
	String exp = "";
%>


<%
	
	String num = request.getParameter("num");
	System.out.print("num" + num);	


	if("CE".equals(num)){
		exp = "";
	}
	else if("=".equals(num)){
		if(exp.contains("")){
			String[] arr = exp.split(" ");
			int n1 = Integer.parseInt(arr[0]);
			String tmp = arr[1];
			int n2 = Integer.parseInt(arr[2]);
			switch(tmp){
			// 문자열로 형변환한다(valueOf)
			case "+": exp = String.valueOf(n1 + n2);			break;
			case "-": exp = String.valueOf(n1 - n2);			break;
			case "x": exp = String.valueOf(n1 * n2);			break;
			case "/": exp = String.valueOf(n1 / (double)n2);	break;
			}
		}
		
	}
	
	// endsWith : 어떤 문자열이 특정 문자로 끝나는지.
	// startsWith : 어떤 문자열이 특정 문자로 시작하는지.
	else{
		if((exp.endsWith(" ") && num.startsWith(" ")) == false ){
			exp += num != null ? num : "";  
		}
	}
%>

<form method="POST">
	<h3 class="exp"><%=exp %></h3>
	<div class="flex">
		<input type="submit" name="num" value="7">
		<input type="submit" name="num" value="8">
		<input type="submit" name="num" value="9">
		<input type="submit" name="num" value=" / ">
		<input type="submit" name="num" value="4">
		<input type="submit" name="num" value="5">
		<input type="submit" name="num" value="6">
		<input type="submit" name="num" value=" x ">
		<input type="submit" name="num" value="1">
		<input type="submit" name="num" value="2">
		<input type="submit" name="num" value="3">
		<input type="submit" name="num" value=" - ">
		<input type="submit" name="num" value="0">
		<input type="submit" name="num" value="CE">
		<input type="submit" name="num" value="=">
		<input type="submit" name="num" value=" + ">
	</div>
</form>


</body>
</html>