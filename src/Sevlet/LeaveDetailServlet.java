package Sevlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBean.Detail;
import javaBean.Message;
import javaBean.User;
import useBean.DetailDB;
import useBean.MessageDB;
import useBean.UserDB;

/**
 * Servlet implementation class LeaveDetailServlet
 */
@WebServlet("/LeaveDetailServlet")
public class LeaveDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveDetailServlet() {
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
		String url ="/MessageDetail.jsp";
		
		if(action.equals("leave"))
			url = leaveDetail(request,response);
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	
	
	private String leaveDetail(HttpServletRequest request,HttpServletResponse response) {
		String comment = request.getParameter("comment");
		String mid = request.getParameter("mid");
		HttpSession session = request.getSession();
		String userid="";
		String url="";
		String cuser="";
		
		//将数据存储于Detail对象
		Detail detail = new Detail();
		userid = (String)session.getAttribute("userid");
		User user = UserDB.selectUser1(userid);
		cuser = user.getusername();
		
		detail.setmid(mid);
		detail.setcuser(cuser);
		detail.setcomment(comment);
		detail.setctime(new Date(System.currentTimeMillis()));
		
		DetailDB.insert(detail);
		
		List<Detail> mL = DetailDB.selectU(); 
		request.setAttribute("DetailList", mL);
		
		
		url="/MessageDetail.jsp?mid="+mid;
		return url;
	}

}
