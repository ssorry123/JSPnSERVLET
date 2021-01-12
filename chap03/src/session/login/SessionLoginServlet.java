package session.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SeesionLoginServlet
 */
@WebServlet("/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SessionLoginServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 클라이언트로부터 id 값과 passwd 값을 받는다.
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		// DB에서 값을 가져와서 비교해야 겠지만, 일단 넘어가자
		if (id.equals("java") && passwd.equals("1234")) {
			// 인증되면 세션의 id값을 설정한다.
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			// 해당 페이지로 포워딩 한다.
			RequestDispatcher dispatcher = request.getRequestDispatcher("session.login.menu.jsp");
			dispatcher.forward(request, response);
		} else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
