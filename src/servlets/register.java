package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	     String account = request.getParameter("account");
		 String password = request.getParameter("password");
		 String username = request.getParameter("username");
		 String sql1 = "select * from users where account=?";
		 String sql2 = "insert into users(username,account,password) values(?,?,?)";
		 PreparedStatement sta1 = null;
		 PreparedStatement sta2 = null;
		 ResultSet res = null;
         try {
			sta1 = DBConnection.getConn().prepareStatement(sql1);
			sta1.setString(1, account);
			res = sta1.executeQuery();
			if(!res.next()){
				sta2 = DBConnection.getConn().prepareStatement(sql2);
				sta2.setString(1, username);
				sta2.setString(2, account);
				sta2.setString(3, password);
				sta2.executeUpdate();
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
			else{
				request.setAttribute("message2", "该账号已注册");
				request.getRequestDispatcher("loginFail.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         finally{
			 DBConnection.Close(null, sta1, res);
			
				 try {
					 if(sta2!=null){
					sta2.close();
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
