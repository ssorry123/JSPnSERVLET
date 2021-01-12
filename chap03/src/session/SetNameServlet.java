package session;
/*
 * 세션 테스트 1
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetNameServlet
 */
@WebServlet("/setName")
public class SetNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SetNameServlet() {
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
		// 기존 세션이 있으면 기존 세션 객체를 반환하고, 아니면 새롭게 세션 객체를 생성
		// HttpSession session = request.getSession(true); // default

		// 기존 세션 객체가 있으면 기존 세션을 반환하고, 없으면 에러 발생
		// HttpSession session = request.getSession(false);

		HttpSession session = request.getSession();
		session.setAttribute("name", "박서원"); // 세션의 이름 속성값을 세팅
		response.setContentType("text/html;charset=UTF-8");

		response.getWriter().println("<h1>이름저장</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
