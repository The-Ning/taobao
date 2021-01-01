package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateCard extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		PreparedStatement sta = null;
		String sql = "update orders set amount=? where orderNo=? and account=?";
		String orderNo = request.getParameter("orderNo");
		int amount = Integer.parseInt(request.getParameter("amount"));
		try {
			sta = DBConnection.getConn().prepareStatement(sql);
			sta.setInt(1, amount);
			sta.setString(2, orderNo);
			sta.setString(3, user.account);
			sta.executeUpdate();
			request.getRequestDispatcher("shoopCardSelect").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBConnection.Close(null, sta, null);
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
