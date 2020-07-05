package jp.itstudy.onlinehomework.controle;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.itstudy.onlinehomework.db.UserDb;
import jp.itstudy.onlinehomework.model.UserModel;
import jp.itstudy.onlinehomework.util.Md5;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		/*
		 * 第一步设置变量
		 */
		request.setCharacterEncoding("utf-8"); // 设置请求参数的编码
		response.setCharacterEncoding("utf-8"); // 设置响应的编码
		response.setContentType("text/html; charset=UTF-8"); // 设置响应页面的编码
		UserDb userDb = new UserDb();
		/*
		 * 第二步接收参数
		 */
		String studentNo = request.getParameter("studentNo");
		String password = request.getParameter("password");
		// 失败页面
		String url = "login.html";
		/*
		 * 对参数做判断
		 */
		if (studentNo != null && !studentNo.isEmpty() && password != null && !password.isEmpty()) {
			userDb.setUserName(studentNo);
			try {
				userDb.setUserPassword(Md5.EncodeByMd5(password));
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// 调用model层
			UserModel um = new UserModel();
			UserDb resultUser = um.searchUser(userDb);
			if (resultUser != null && resultUser.getUserId() > 0) {
				if (resultUser.getUserRole() == 1) {
					url = "studentHome.jsp";
				} else {
					url = "teacherHome.jsp";
				}
//				url = "homepage.html";
//				session 记录信息
				HttpSession session = request.getSession();
				session.setAttribute("studentNo", resultUser.getUserName());
				session.setAttribute("uid", resultUser.getUserId());
				session.setAttribute("role", resultUser.getUserRole());
			}

		}

		response.sendRedirect(request.getContextPath() + "/" + url);
		return;
	}

}
