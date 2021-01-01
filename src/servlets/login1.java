package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login1 extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
     request.setCharacterEncoding("utf-8");
     String account = request.getParameter("account");
	 String password = request.getParameter("password");
	 String sql = "select * from users where account=? and password=?";
	 PreparedStatement sta = null;
	 ResultSet res = null;
	 try {
	    sta = DBConnection.getConn().prepareStatement(sql);
		sta.setString(1, account);
		sta.setString(2, password);
		res = sta.executeQuery();
		if(res.next()){
			user.account = res.getString("account");
			user.password = res.getString("password");
			
			request.setAttribute("username", res.getString("username"));
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else{
			request.setAttribute("message2", "很遗憾，登录失败，请检查您的账号和密码");
			request.getRequestDispatcher("loginFail.jsp").forward(request, response);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 finally{
		 DBConnection.Close(null, sta, res);
	 }
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
