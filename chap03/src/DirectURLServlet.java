/*
 * 처음 그냥 입력하면 null
 * 
 * url 입력 : http://localhost:8089/chap03/directURL?name=%EC%BA%AC%EC%BA%AC%EA%B0%80123abc&age=123
 * 
 */

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DirectURLServlet
 */
@WebServlet("/directURL")
public class DirectURLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DirectURLServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String age = request.getParameter("age");

		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		out.println("이름 : " + name);
		out.println("나이 : " + age);
	}

}
