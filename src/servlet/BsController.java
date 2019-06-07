package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.UserAddrDAO;
import user.UserAddrVO;
import user.UserDataDAO;
import user.UserDataVO;

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

		// 아이디 중복 체크 컨트롤러
		if (com.equals("/idCheck.do")) {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			String userID = request.getParameter("userId");
			System.out.println(userID);
			UserDataDAO userDataDao = new UserDataDAO();
			int result = userDataDao.idDuplicate(userID);

			System.out.println(result);

			if (result != -2)
				response.getWriter().write(idDuplicateJSON(result));
			else
				System.out.println("데이터베이스 오류!");
		}
		// 회원가입 컨트롤러
		else if (com.equals("/signUp.do")) {
			request.setCharacterEncoding("utf-8");
			// userData 객체 생성
			UserDataVO userData = new UserDataVO();
			userData.setUserID(request.getParameter("userId"));
			userData.setUserPassword(request.getParameter("userPw"));
			userData.setUserName(request.getParameter("userName"));
			userData.setUserEmail(request.getParameter("userEmail"));
			userData.setUserPhone(Integer.parseInt(request.getParameter("userPhone")));
			userData.setEmailReceiveYn(request.getParameter("emailReceiveYn").charAt(0));
			userData.setSmsReceiveYn(request.getParameter("smsReceiveYn").charAt(0));
			userData.setAdmin('0');
			// dataDao 객체 생성, 삽입
			UserDataDAO udataDao = new UserDataDAO();
			udataDao.insert(userData);
			
			// userAddr 객체 생성
			if(request.getParameter("userPostcode") != null) {
			UserAddrVO userAddr = new UserAddrVO();
			userAddr.setUserID(request.getParameter("userId"));
			userAddr.setPostcode(Integer.parseInt(request.getParameter("userPostcode")));
			userAddr.setRoadAddress(request.getParameter("userRoadAddr"));
			userAddr.setJibunAddress(request.getParameter("userJibunAddr"));
			userAddr.setDetailAddress(request.getParameter("userDetailAddress"));
			userAddr.setExtraAddress(request.getParameter("userExtraAddr"));
			// addrDao 객체 생성, 삽입
			UserAddrDAO uaddrDao = new UserAddrDAO();
			uaddrDao.insert(userAddr);
			}
			
			HttpSession session = request.getSession();
			String id = request.getParameter("userId");
			String name = request.getParameter("userName");

			session.setAttribute("id", id);
			session.setAttribute("name", name);

			response.sendRedirect("signUpComplete.jsp");
		}
		// 로그인 컨트롤러
		else if (com.equals("/login.do")) {
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("userId");
			String pw = request.getParameter("userPassword");
			UserDataDAO userdao = new UserDataDAO();
			int result = userdao.login(id, pw);
			HttpSession session = request.getSession();
			if (result == 1) {
				session.setAttribute("userID", id);
				session.setAttribute("admin", 0);
				response.sendRedirect("index.jsp");
			} else if (result == 2) {
				session.setAttribute("userID", id);
				session.setAttribute("admin", 1);
				response.sendRedirect("index.jsp");
			} else if (result == 0) {
				session.setAttribute("loginFailed", 1);
				response.sendRedirect("login.jsp");
			} else {
				System.out.println("데이터베이스 오류!");
			}

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
