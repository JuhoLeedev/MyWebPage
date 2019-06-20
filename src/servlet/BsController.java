package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.BoardDAO;
import board.BoardVO;
import goods.GoodsDAO;
import goods.GoodsVO;
import purchase.BuyDAO;
import purchase.BuyVO;
import purchase.CartDAO;
import purchase.CartVO;
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

		/**
		 * 아이디 중복 체크 컨트롤러
		 */
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
		/**
		 * 회원가입 컨트롤러
		 */
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
			if (request.getParameter("userPostcode") != "") {
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
			if (request.getParameter("userPostcode") != "") {
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
		/**
		 * 로그인 컨트롤러
		 */
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

		}
		/**
		 * 로그아웃 컨트롤러
		 */
		else if (com.equals("/logout.do")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
		/**
		 * 게시글 삭제 컨트롤러
		 */
		else if (com.equals("/deleteBoard.do")) {
			request.setCharacterEncoding("utf-8");
			int bcode = Integer.parseInt(request.getParameter("bcode"));
			BoardDAO boardDao = new BoardDAO();
			boardDao.remove(bcode);
			response.sendRedirect("board.jsp");
		}
		/**
		 * 게시글 클릭 이벤트
		 */
		else if (com.equals("/hits.do")) {
			request.setCharacterEncoding("utf-8");
			int bcode = Integer.parseInt(request.getParameter("bcode"));
			BoardDAO boardDao = new BoardDAO();
			boardDao.hitsUpdate(bcode);
			response.sendRedirect("board_detail.jsp?bcode=" + bcode);
		}
		/**
		 * 게시글 작성 컨트롤러
		 */
		else if (com.equals("/boardWrite.do")) {
			request.setCharacterEncoding("utf-8");
			BoardDAO dao = new BoardDAO();
			HttpSession session = request.getSession();
			if (request.getParameter("bcode") == null) {
				BoardVO vo = new BoardVO();
				vo.setUserID((String) session.getAttribute("userID"));
				vo.setTitle(request.getParameter("bTitle"));
				vo.setBwrite(request.getParameter("bContent"));
				vo.setHits(0);
				vo.setScode(0);

				dao.insert(vo);
			} else {
				BoardVO vo = dao.searchBoard(Integer.parseInt(request.getParameter("bcode")));
				vo.setTitle(request.getParameter("bTitle"));
				vo.setBwrite(request.getParameter("bContent"));
				dao.update(vo);
			}
			response.sendRedirect("board.jsp");
		}
		/**
		 * 회원정보 수정 컨트롤러
		 */
		else if (com.equals("/userUpdate.do")) {
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
			udataDao.update(userData);

			// userAddr 객체 생성
			if (request.getParameter("userPostcode1") != "") {
				UserAddrVO userAddr = new UserAddrVO();
				userAddr.setUserID(request.getParameter("userId"));
				userAddr.setPostcode(Integer.parseInt(request.getParameter("userPostcode1")));
				userAddr.setRoadAddress(request.getParameter("userRoadAddr1"));
				userAddr.setJibunAddress(request.getParameter("userJibunAddr1"));
				userAddr.setDetailAddress(request.getParameter("userDetailAddress1"));
				userAddr.setExtraAddress(request.getParameter("userExtraAddr1"));
				// addrDao 객체 생성, 삽입
				UserAddrDAO uaddrDao1 = new UserAddrDAO();
				uaddrDao1.insert(userAddr);
			}
			if (request.getParameter("userPostcode2") != "") {
				UserAddrVO userAddr = new UserAddrVO();
				userAddr.setUserID(request.getParameter("userId"));
				userAddr.setPostcode(Integer.parseInt(request.getParameter("userPostcode2")));
				userAddr.setRoadAddress(request.getParameter("userRoadAddr2"));
				userAddr.setJibunAddress(request.getParameter("userJibunAddr2"));
				userAddr.setDetailAddress(request.getParameter("userDetailAddress2"));
				userAddr.setExtraAddress(request.getParameter("userExtraAddr2"));
				// addrDao 객체 생성, 삽입
				UserAddrDAO uaddrDao2 = new UserAddrDAO();
				uaddrDao2.insert(userAddr);
			}
			if (request.getParameter("userPostcode3") != "") {
				UserAddrVO userAddr = new UserAddrVO();
				userAddr.setUserID(request.getParameter("userId"));
				userAddr.setPostcode(Integer.parseInt(request.getParameter("userPostcode3")));
				userAddr.setRoadAddress(request.getParameter("userRoadAddr3"));
				userAddr.setJibunAddress(request.getParameter("userJibunAddr3"));
				userAddr.setDetailAddress(request.getParameter("userDetailAddress3"));
				userAddr.setExtraAddress(request.getParameter("userExtraAddr3"));
				// addrDao 객체 생성, 삽입
				UserAddrDAO uaddrDao3 = new UserAddrDAO();
				uaddrDao3.insert(userAddr);
			}

			response.sendRedirect("index.jsp");

		} 
		/**
		 * 구매하기
		 */
		else if (com.equals("/purchase.do")) {
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			String userID = (String) session.getAttribute("userID");
			int code = Integer.parseInt(request.getParameter("code"));

			BuyVO buyVo = new BuyVO();
			buyVo.setPcode(code);
			buyVo.setUserID(userID);
			BuyDAO buyDao = new BuyDAO();
			buyDao.insert(buyVo);
			response.sendRedirect("purchaseComplete.jsp");
		}
		/**
		 * 장바구니 담기
		 */
		else if (com.equals("/addToCart.do")) {
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			String userID = (String) session.getAttribute("userID");
			int code = Integer.parseInt(request.getParameter("code"));

			CartVO cartVo = new CartVO();
			cartVo.setPcode(code);
			cartVo.setUserID(userID);
			CartDAO cartDao = new CartDAO();
			cartDao.insert(cartVo);
			response.sendRedirect("goods_pc.jsp");
		}
		/**
		 * 회원탈퇴
		 */
		else if (com.equals("/userOut.do")) {
			request.setCharacterEncoding("utf-8");
			String userID = request.getParameter("userID");
			UserDataDAO dataDao = new UserDataDAO();
			dataDao.remove(userID);
			UserAddrDAO addrDao = new UserAddrDAO();
			addrDao.removeAll(userID);

			response.sendRedirect("userOut.jsp");
		} 
		/**
		 * 주문 취소
		 */
		else if (com.equals("/purchaseCancel.do")) {
			request.setCharacterEncoding("utf-8");
			int buycode = Integer.parseInt(request.getParameter("code"));
			BuyDAO buyDao = new BuyDAO();
			buyDao.remove(buycode);
			

			response.sendRedirect("myPurchase.jsp");
			
		} 
		/**
		 * 장바구니 비우기
		 */
		else if (com.equals("/cartDelete.do")) {
			request.setCharacterEncoding("utf-8");
			int cartcode = Integer.parseInt(request.getParameter("code"));
			System.out.println(cartcode);
			CartDAO cartDao = new CartDAO();
			cartDao.remove(cartcode);
			

			response.sendRedirect("myCart.jsp");
		}
		/**
		 * 유저 삭제하기
		 */
		else if (com.equals("/userDataDelete.do")) {
			request.setCharacterEncoding("utf-8");
			String userID = request.getParameter("userID");
			UserDataDAO userDao = new UserDataDAO();
			userDao.remove(userID);
			

			response.sendRedirect("myCart.jsp");
		}

	}

	public String idDuplicateJSON(int result) {
		StringBuffer bf = new StringBuffer("");
		bf.append("{\"result\": \"" + result + "\"}");
		return bf.toString();
	}

}
