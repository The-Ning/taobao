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
    <title>欢迎来到天猫商城</title>
    <link rel="stylesheet" href="CSS/tianmao.css" type="text/css">
</head>
<body>
  <% request.setCharacterEncoding("utf-8");
     
   %>
    <div class="top">
        <img src="https://img.alicdn.com/tfs/TB1008a4.z1gK0jSZLeXXb9kVXa-1190-110.jpg" >
    </div>
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
    
       <div class="center">
                 <img src="https://gw.alicdn.com/tfs/TB1OpaTmUz1gK0jSZLeXXb9kVXa-666-243.png" class="log">
                 <div class="search-body">
                 <input type="search" placeholder="搜索天猫超市商品" class="search">
                 <input type="button" value="搜索" class="search-button">
                </div>

                <!-- 商品区域-->
                  <div class="shoops">
                      <div >
                            <form action="addCard" method="post">
                                <img src="imgs/shoops/牛奶/超定制伊利金典纯牛奶24盒.jpg">
                                <input type="text" readonly="readonly" value="超定制伊利金典纯牛奶24盒" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$119.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit" >
                                <input type="text" name="imgSrc" value="imgs/shoops/牛奶/超定制伊利金典纯牛奶24盒.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X01" style="display: none;">
                            </form>
                            <form action="addCard" method="post">
                                <img src="imgs/shoops/牛奶/老字号原味酸奶.jpg">
                                <input type="text" readonly="readonly" value="老字号原味酸奶" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$89.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/牛奶/老字号原味酸奶.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X02" style="display: none;">
                            </form>
                            <form action="addCard" method="post">
                                <img src="imgs/shoops/牛奶/豆本豆维真豆奶.jpg">
                                <input type="text" readonly="readonly" value="豆本豆维真豆奶" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$99.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/牛奶/豆本豆维真豆奶.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X03" style="display: none;">
                            </form>
                            <form action="addCard" method="post">
                                <img src="imgs/shoops/牛奶/蒙牛特仑苏纯牛奶250ml.jpg">
                                <input type="text" readonly="readonly" value="蒙牛特仑苏纯牛奶250ml" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$230.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/牛奶/蒙牛特仑苏纯牛奶250ml.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X04" style="display: none;">
                            </form>
                            <form action="addCard" method="post">
                                <img src="imgs/shoops/牛奶/德国牛奶【进口】.jpg">
                                <input type="text" readonly="readonly" value="德国牛奶【进口】" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$119.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/牛奶/德国牛奶【进口】.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X05" style="display: none;">
                            </form>
                           
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/四大名著/三国演义.jpg">
                                <input type="text" readonly="readonly" value="《三国演义》书籍（文言文）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$70.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit" >
                                <input type="text" name="imgSrc" value="imgs/shoops/四大名著/三国演义.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X06" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/四大名著/红楼梦.jpg">
                                <input type="text" readonly="readonly" value="《红楼梦》书籍（文言文）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$70.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/四大名著/红楼梦.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X07" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/四大名著/西游记.jpg">
                                <input type="text" readonly="readonly" value="《西游记》书籍（文言文）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$79.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/四大名著/西游记.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X08" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/四大名著/水浒传.jpg">
                                <input type="text" readonly="readonly" value="《水浒传》书籍（文言文）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$79.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/四大名著/水浒传.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X09" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/四大名著/四大名著（四本）.jpg">
                                <input type="text" readonly="readonly" value="四大名著（四本）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$150.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/四大名著/四大名著（四本）.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X010" style="display: none;">
                        </form>
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/英语/星火英语四级真题.jpg">
                                <input type="text" readonly="readonly" value="星火英语四级真题" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$27.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/英语/星火英语四级真题.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X011" style="display: none;">
                        </form>
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/英语/考虫英语四级单词书.jpg">
                                <input type="text" readonly="readonly" value="考虫英语四级单词书" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$35.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/英语/考虫英语四级单词书.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X012" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/英语/新东方四级绿宝书.jpg">
                                <input type="text" readonly="readonly" value="新东方四级绿宝书" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$26.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/英语/新东方四级绿宝书.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X013" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/英语/新东方考研英语红宝书.jpg">
                                <input type="text" readonly="readonly" value="新东方考研英语红宝书" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$35.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/英语/新东方考研英语红宝书.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X014" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/英语/张剑英黄皮书考研英语真题.jpg">
                                <input type="text" readonly="readonly" value="张剑英黄皮书考研英语真题" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$49.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/英语/张剑英黄皮书考研英语真题.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X015" style="display: none;">
                        </form>
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/前端/Web前端开发技术.jpg">
                                <input type="text" readonly="readonly" value="Web前端开发技术" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$79.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/前端/Web前端开发技术.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X016" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/前端/图解HTTP.jpg">
                                <input type="text" readonly="readonly" value="图解HTTP" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$79.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/前端/图解HTTP.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X017" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/前端/JavaScript高级程序设计.jpg">
                                <input type="text" readonly="readonly" value="JavaScript高级程序设计" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$59.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/前端/JavaScript高级程序设计.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X018" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/前端/Vue快速入门.jpg">
                                <input type="text" readonly="readonly" value="Vue快速入门" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$59.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/前端/Vue快速入门.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X019" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/前端/React.js（从入门到实战）.jpg">
                                <input type="text" readonly="readonly" value="React.js（从入门到实战）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$69.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/前端/React.js（从入门到实战）.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X020" style="display: none;">
                        </form>
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/零食/原味纯蛋糕.jpg">
                                <input type="text" readonly="readonly" value="原味纯蛋糕" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$32.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/零食/原味纯蛋糕.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X021" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/零食/手撕面包.jpg">
                                <input type="text" readonly="readonly" value="手撕面包" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$35.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/零食/手撕面包.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X022" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/零食/腱子肉片（蒙古牛肉）.jpg">
                                <input type="text" readonly="readonly" value="腱子肉片（蒙古牛肉）" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$60.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/零食/腱子肉片（蒙古牛肉）.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X023" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/零食/良品铺子红枣.jpg">
                                <input type="text" readonly="readonly" value="良品铺子红枣" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$66.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/零食/良品铺子红枣.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X024" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/零食/良品铺子芒果干.jpg">
                                <input type="text" readonly="readonly" value="良品铺子芒果干" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$45.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/零食/良品铺子芒果干.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X025" style="display: none;">
                        </form>
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/水果/山东烟台苹果.jpg">
                                <input type="text" readonly="readonly" value="山东烟台苹果" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$49.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/水果/山东烟台苹果.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X026" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/水果/现摘红心火龙果.jpg">
                                <input type="text" readonly="readonly" value="现摘红心火龙果" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$79.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/水果/现摘红心火龙果.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X027" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/水果/丹东牛奶草莓.jpg">
                                <input type="text" readonly="readonly" value="丹东牛奶草莓" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$66.99" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/水果/丹东牛奶草莓.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X028" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/水果/四川新鲜橙子.jpg">
                                <input type="text" readonly="readonly" value="四川新鲜橙子" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$49.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/水果/四川新鲜橙子.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X029" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/水果/泰国金枕榴莲.jpg">
                                <input type="text" readonly="readonly" value="泰国金枕榴莲" class="shop-name"name="shopName">
                               <input type="text" readonly="readonly" value="$119.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/水果/泰国金枕榴莲.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X030" style="display: none;">
                        </form>
                      </div>
                      <div>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/手机/一加8T.jpg">
                                <input type="text" readonly="readonly" value="一加8T" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$3059.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/手机/一加8T.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X031" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/手机/iPone11现货.jpg">
                                <input type="text" readonly="readonly" value="iPone11现货" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$4439.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/手机/iPone11现货.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X032" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/手机/华为Mate40Pro.jpg">
                                <input type="text" readonly="readonly" value="华为Mate40Pro" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$7299.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/手机/华为Mate40Pro.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X033" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/手机/iPhone12到手价5499起.jpg">
                                <input type="text" readonly="readonly" value="iPhone12到手价5499起" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$5499.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/手机/iPhone12到手价5499起.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X034" style="display: none;">
                        </form>
                        <form action="addCard" method="post">
                            <img src="imgs/shoops/手机/小米至尊纪念版K30S.jpg">
                                <input type="text" readonly="readonly" value="小米至尊纪念版K30S" class="shop-name" name="shopName">
                               <input type="text" readonly="readonly" value="$2300.00" class="shop-price" name="price">
                                <img src="imgs/shoopCardImg.jpg" class="form-submit">
                                <input type="text" name="imgSrc" value="imgs/shoops/手机/小米至尊纪念版K30S.jpg" style="display: none;">
                                <input type="text" name="shopNo" value="X035" style="display: none;">
                        </form>
                      </div>
                      
                      
                     
                  </div>
                 </div>
</body>
<script src="JS/tianmao.js"></script>
</html>
