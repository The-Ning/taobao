<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录成功</title>
</head>
<style>
    *{
        margin: 0;
        color:black;
        list-style: none;
        text-decoration: none;
        
    }

    img{
        position:absolute;
        top:30%;
        left:480px;
    }
    a{
        position:absolute;
        top:32%;
        left:650px;
        display: flex;
        flex-direction: row;
        vertical-align: middle;
    }
    span{
        font-size: 20px;
        text-decoration: underline;
        color:deepskyblue;
        position:relative;
        top:-5px;
        margin-right: 10px;
    }
</style>
<body>
     <%
       String username = request.getAttribute("message2").toString();
       
      %>
    <img src="https://img.alicdn.com/tfs/TB1_uT8a5ERMeJjSspiXXbZLFXa-143-59.png" >
    <a href="index.jsp"><%= username %><span>6</span>秒后重新输入信息，也可以直接点击跳转</a>
</body>
</html>

<script>
    var a = document.querySelector('a');
    var secon = document.querySelector('span');
    setInterval(fun,1000);
    var sec=6;
    function fun(){
        sec--;
        if(sec==0){
            location.href="login.jsp";
            return;
        }
        secon.innerHTML = sec;
    }
</script>
