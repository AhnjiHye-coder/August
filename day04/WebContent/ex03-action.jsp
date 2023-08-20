<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex03.Movie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-action.jsp</title>
</head>
<body>

<%!
/// 2. 데이터 처리 -> 보여주는 곳으로 (setAttribute을 사용해서 )만든 데이터를 넘겨준다
	Movie[] arr = {
			new Movie("밀수","2023-07-26",2417754),
			new Movie("오펜하이머","2023-08-15",0),
			new Movie("비공식작전","2023-08-02",165433),
			new Movie("더 문","2023-08-02",121186),
			new Movie("콘크리트 유토피아","2023-08-09",4876),
			new Movie("엔리멘탈","2023-06-14",5955156),
			new Movie("미션 임파서블: 데드 레코닝 PART ONE","2023-07-12",2685013),
			new Movie("바비","2023-07-19",475694),
			new Movie("몬스터 패밀리2","2023-08-02",17678),
			new Movie("명탐정코난: 흑철의 어영","2023-07-20",632510),
	};

%>

<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
	
	Movie date = null;
	
	for(Movie ob : arr){
		// arr 영화 제목 중에서 내가 입력해서 넘어온 파라미터 영화제목이랑 일치하는게 있다면 진입
		// Movie클래스 안에 있는 getTitle이거랑 내가 입력한 영화제목이랑 일치하면
		// data에 ob인 arr의 일치하는 영화를 담는다
		if(ob.getTitle().contains(search)){ 
			date = ob; // date에 ob(arr)의 일치하는 정보를 넣고
			break; // 찾았으니까 반복 멈춤
					
		}
	}
	session.setAttribute("date", date); // 그리고 출력
	
	// 페이지를 자동으로 넘어가게 하고 싶다면
	String url = "ex03-result.jsp";
	response.sendRedirect(url);
	// sendRedirect의 효과는 클릭하지 않아도 자동으로 페이지가 설정한 페이지로 넘어간다

%>

</body>
</html>