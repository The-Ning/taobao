<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/login.css" type="text/css" rel="stylesheet">
    <title>我的淘宝</title>
</head>
<body>
  <% request.setCharacterEncoding("utf-8"); %>
    <div class="log">
        <a href="index.jsp" >淘宝网</a>
    </div>
    <a href="#" class="advise">“登录页面”改进建议</a>
    <div id="nowTime"></div>
      <div class="loginbg">
          <div class="caidan">
              <div class="head-tab">
                  <div class="head-tab-div current">密码登录</div>
                  <div class="head-tab-div">验证码登录</div>
                  <div class="head-tab-div">扫码登录</div>
              </div>
              <div class="body-tab">
              <% request.setCharacterEncoding("utf-8"); %>
                  <form class="body-tab-div current" action="login1" method="post" id="form-telephone">
                    <div id="username-error1" class="username-error"></div>
                      <input type="text" placeholder="会员名/邮箱/手机号" class="username" id="username1" name="account">
                      <div id="password-error1" class="password-error"></div>
                      <input type="password" placeholder="请输入登录密码" class="password" id="password1" name="password">
                      <input type="button" id="submit-one" value="登录">
                      <a href="#" class='a1'>支付宝登录</a><a href="#" class="a2">微博登录</a>
                      <a href="#" class="a3">忘记密码</a>
                      <a href="#" class="a4">忘记用户名</a>
                      <a href="#" class="a5">免费注册</a>
                      </form>
                 
                      <form class="body-tab-div" action="login2" method="post" id="form-yzcode">
                    <div id="username-error2" class="username-error"></div>
                    <input type="text" placeholder="请输入手机号" class="username" id="username2" name="account">
                    <div id="password-error2" class="password-error"></div>
                     <input type = "button" id="random-code" /> 
                    <input type="password" placeholder="请输入验证码" class="password" id="password2">
                    <input type="button" id="submit-two" value="登录">
                    <a href="#" class='a1'>支付宝登录</a><a href="#" class="a2">微博登录</a>
                    <a href="#" class="a3">忘记密码</a>
                    <a href="#" class="a4">忘记用户名</a>
                    <a href="#" class="a5">免费注册</a>
                  </form>
                  <form class="body-tab-div" action="index.html" method="POST" id="form-picture">
                    <img src="imgs/wx.png" class="dl-code">


                    <!--  验证条 -->
                    <div id="box">
                      <div id="wrrape">滑动验证？</div>
                      <div id="within"></div>
                      <div id="btn"></div>
                    </div>
                  </form>
              </div>
         </div>
      </div>
</body>
<script src="JS/login.js"></script>

</html>