package seprac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RespectBinding;

@WebServlet("/seprac/getServlet")
public class GetServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
		String msg = request.getParameter("msg");
		response.setContentType("text/html; charset=utf8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Get Servlet</h1><p/>");
		out.println("<h2>msg : " + msg + "</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
