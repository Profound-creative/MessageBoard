package Sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBean.User;
import useBean.UserDB;
/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String message ="";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		String url ="register.html";
		
		if(action.equals("regist"))
			url = registerUser(request,response);
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	
	private String registerUser(HttpServletRequest request,HttpServletResponse response) {
		String username = request.getParameter("username"); 
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String message = "";
		HttpSession session = request.getSession();
		
		//System.out.println(password+password2);
		
		//将数据存储于User对象
		User user = new User();
		user.setusername (username); 
		user.setpassword(password);
		
		String url = "/login.jsp";
		
		if(password.equals(password2))
		{
			if( !UserDB.UserExists(username) ) {
				message = "注册成功！";
				session.setAttribute("message", message);
				
				UserDB.insert(user);
				return url;
			}
			else
			{
				message = "用户名已存在";
				url = "/register.jsp";
				session.setAttribute("message", message);
				return url;
			}
		}
		else 
		{
			message = "密码不一致";
			session.setAttribute("message", message);
			url = "/register.jsp";
			return url;
		}
	}
}
