package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request : 클라이언트에서 보낸 메세지가 담겨있는 객체
//		response : 클라이언트에게 보낼 메세지를 담기위한 객체(현재는 거의 비어있는 상태)
		
		// 톰켓이라는 프로그램이 있는데, 이클립스에 의해서 톰켓이 실행된다
		// 내가 톰켓에게 주소를 날리면 톰켓이 답장을 준다
		
//		글자를 이용하여 메세지를 주고 박지 때문에 글자 인코딩규칙은 필수이다(UFT-8)
		request.setCharacterEncoding("UFT-8");
		response.setCharacterEncoding("UTF-8");
		
		// response에는 문자열을 이용하여 HTML태그를 작성해서 채워넣으면 된다
		// response에게 문자열을 전달하기 위한 (글자를 쓰기위한(객체)out
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>서블릿</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>MySetvlet</h1>");
		out.println("<hr>");
		out.println("<h3>지금은");
		//%
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String now = sdf.format(date);
		
		//%
		
		out.println(now + "입니다</h3>");
		out.println(" </body>");
		out.println(" </head>");
		
		
		
		
	}
	
}
