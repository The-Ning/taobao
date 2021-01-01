package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login2 extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
		String account = request.getParameter("account");
		String sql = "select * from users where account="+account;
		Statement sta = null;
		ResultSet res = null;
		try {
			sta = DBConnection.getConn().createStatement();
			res = sta.executeQuery(sql);
			if(res.next()){
				user.account = account;
				user.password = res.getString("password");
				request.setAttribute("username", res.getString("username"));
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		     else{
			   request.setAttribute("message2", "很遗憾，登录失败，该账号未注册");
			   request.getRequestDispatcher("loginFail.jsp").forward(request, response);
		     }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			 DBConnection.Close(null, null, res);
			
				 try {
					 if(sta!=null){
					sta.close();
					 }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 }
		 
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
