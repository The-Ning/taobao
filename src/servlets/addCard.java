package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addCard extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
       PreparedStatement sta1 = null;
       PreparedStatement sta2 = null;
       PreparedStatement sta3 = null;
       ResultSet res = null;
       request.setCharacterEncoding("utf-8");
       String orderNo = request.getParameter("shopNo");
       String orderName = request.getParameter("shopName");
       String imgSrc = request.getParameter("imgSrc");
       double price = Double.parseDouble(request.getParameter("price").substring(1));
       String sql1 = "select * from orders where orderNo=? and account=?";
       String sql2 = "update orders set amount=amount+1 where orderNo=? and account=?";
       String sql3 = "insert into orders(orderNo,orderName,imgSrc,price,amount,account)"
       		+ "values(?,?,?,?,1,?)";
       try {
		sta1 = DBConnection.getConn().prepareStatement(sql1);
		sta1.setString(1, orderNo);
		sta1.setString(2, user.account);
		res = sta1.executeQuery();
		if(res.next()){
			sta2 = DBConnection.getConn().prepareStatement(sql2);
			sta2.setString(1, orderNo);
			sta2.setString(2, user.account);
			sta2.executeUpdate();
			request.getRequestDispatcher("tianmao.jsp").forward(request, response);
		}
		else{
			sta3 = DBConnection.getConn().prepareStatement(sql3);
			sta3.setString(1, orderNo);
			sta3.setString(2, orderName);
			sta3.setString(3, imgSrc);
			sta3.setDouble(4,price);
			sta3.setString(5, user.account);
			sta3.executeUpdate();
			request.getRequestDispatcher("tianmao.jsp").forward(request, response);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		finally{
			DBConnection.Close(null, sta1, res);
			try {
				if(sta2 != null ){
				sta2.close();
				}
				if(sta3!=null){
					sta3.close();
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
