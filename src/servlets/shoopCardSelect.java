package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import com.tao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class shoopCardSelect extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        PreparedStatement sta = null;
        ResultSet res = null;
        String sql = "select * from orders where account=?";
        try {
			sta = DBConnection.getConn().prepareStatement(sql);
			sta.setString(1, user.account);
			res = sta.executeQuery();
			ArrayList<orders> list = new ArrayList<orders>();
			while(res.next()){
				orders obj = new orders();
				obj.setOrderNo(res.getString("orderNo"));
				obj.setOrderName(res.getString("orderName"));
				obj.setAmount(res.getInt("amount"));
				obj.setPrice(res.getDouble("price"));
				obj.setImgSrc(res.getString("imgSrc"));
				list.add(obj);
			}
			request.setAttribute("list", list);
			request.getRequestDispatcher("shoopCard.jsp").forward(request, response);
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
