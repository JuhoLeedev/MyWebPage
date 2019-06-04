package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.UserDataDAO;

/**
 * Servlet implementation class IdCheckServlet
 */
@WebServlet("/BsController")
public class BsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BsController() {
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
		/*
		 * HttpSession session = request.getSession(); String id =
		 * request.getParameter("id"); UserDataDAO userDAO = new UserDataDAO(); int
		 * result = userDAO.idDuplicate(id); session.setAttribute("isduplicated",
		 * result);
		 * 
		 * response.sendRedirect("signUp.jsp");
		 */
		System.out.println("doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String viewPage = null;

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());

		if (com.equals("/idCheck.do")) {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			String userID = request.getParameter("userID");
			UserDataDAO userDataDao = new UserDataDAO();
			int result = userDataDao.idDuplicate(userID);
			response.getWriter().write(idDuplicateJSON(result));
		} else if (com.equals("/signUp.do")) {
			HttpSession session = request.getSession();
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			
			response.sendRedirect("signUpComplete.jsp");
		} else if (com.equals("/list.do")) {

			viewPage = "list.jsp";
		} else if (com.equals("/content_view.do")) {

			viewPage = "content_view.jsp";
		} else if (com.equals("/modify.do")) {

			viewPage = "list.do";
		} else if (com.equals("/delete.do")) {

			viewPage = "list.do";
		} else if (com.equals("/reply_view.do")) {

			viewPage = "reply_view.jsp";
		} else if (com.equals("/reply.do")) {

			viewPage = "list.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}

	}

	public String idDuplicateJSON(int result) {
		StringBuffer bf = new StringBuffer("");
		bf.append("{\"result\": \"" + result + "\"}");
		return bf.toString();
	}

}
