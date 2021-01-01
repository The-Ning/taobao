<%@ page language="java" import="java.util.*,com.tao.*;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="CSS/shopCard.css" />
</head>
<body>
      
      <div class="dh">
        <div class="dh-inner">
    <div class="top-left"><a>Hi <%= user.username %>！</a> <a>您的积分5000</a><form action="login1" method="post" id="backIndex">
    <input type="text" value="<%= user.account %>" name="account" style="display:none">
    <input type="text" value="<%= user.password %>" name="password" style="display:none">
    回到淘宝</form></div>
      <div class="top-right">
          <div>我的淘宝</div>
          <div id="shoopCart">购物车</div>
          <div>收藏夹</div>
          <div>我的足迹</div>
      </div>
          </div>
    </div>

      <div class="cart">
                  <div class="cart-title"><%= user.username %>的购物车</div>
             <table class="cart-table" >
                 <tr id="top-title">
                     <td><span id="cart-all">全选</span></td>
                     <td>商品号</td>
                     <td>商品名</td>
                     <td>商品图</td>
                     <td>单价</td>
                     <td>数量</td>
                     <td>小计</td>
                     <td>操作</td>
                 </tr>
<%
        request.setCharacterEncoding("utf-8");
        ArrayList<orders> list = (ArrayList<orders>)request.getAttribute("list");
        for(int i=0;i<list.size();i++){
       %>
        <form action="updateCard" method="post">
                 <tr class="cart-item">
                
                     <td><input type="checkbox"></td>
                     <td><input type="text" class="cart-no" name="orderNo" 
                       value="<%= list.get(i).getOrderNo() %>" readonly="readonly"></td>
                     <td><span class="cart-name"><%= list.get(i).getOrderName() %></span></td>
                     <td> <img class="orderImg" src="<%= list.get(i).getImgSrc()%>"></td>
                     <td><span class="cart-price"><%= list.get(i).getPrice() %></span></td>
                     <td>
                         <span class="cart-reduce" >-</span>
                         <input type="text" class="cart-num"  value="<%= list.get(i).getAmount()%>" name="amount">
                         <span class="cart-add" >+</span>
                     </td>
                     <td><span class="cart-subtotal"> <%= list.get(i).getAmount()*list.get(i).getPrice()%></span></td>
                     <td>
                     <input type="submit" class="cart-update" value="修改">
                         
                     <a class="cart-del" href="deleteCard?orderNo=<%= list.get(i).getOrderNo()%>">删除</a></td>
                 </tr></form>
         <%
         }
          %>
                 <tr class="cart-bottom">
                     <td colspan="8">
                         <span style="position:relative;left:-165px;">已选择<span class="cart-total-num">0</span>件商品</span>
                         <span style="position:relative;left:-40px;">总计<span class="cart-total-price">0</span>元</span>
                         <span style="position:relative;left:-5px;background-color:  #ff6f06;
                         color:white;display: inline-block;width:100px;height:25px;text-align: center;line-height: 25px;cursor: pointer;">提交订单</span>
                     </td>
                 </tr>
             </table>
      </div>
</body>
 <script src="JS/shopCard.js"></script>
</html>
