<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="CSS/register.css" />
</head>
<body>
    <div class="log">
             
    </div>


    <form action="register" method="post">
        <div class="tab">
            填写帐号注册信息（必填）
        </div>
        <span id="usernameyz">用户名不能为空</span>
       
        <lable id="sname">用户名</lable>
        <input type="text" placeholder="请输入用户名" id="username" name="username">
        
        <span id="accountyz">账号格式不正确</span>
        <lable id="saccount">账号</lable>
        <input type="text" placeholder="请输入账号" id="account" name="account">
       
        <span id="passyz">密码至少两个字母开头，至少6个数字</span>
        <lable id="spass">密码</lable>
        <input type="password" name="password" id="password" placeholder="请设置密码">
        
        <span id="pass1yz">确认密码不一致</span>
        <lable id="spass1">确认密码</lable>
        <input type="password" placeholder="再次输入密码" id="password1">
               <div id="sub">注册</div>
    </form>
</body>
<script src="JS/register.js"></script>

</html>