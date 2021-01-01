<%@ page language="java" import="java.util.*,com.tao.*;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World</title>
    <link href="CSS/index.css" rel="stylesheet" type="text/css">
    <link href="CSS/index2.css" rel="stylesheet" type="text/css">
    <link href="CSS/index3.css" rel="stylesheet" type="text/css">
</head>
<body> 

    <div class="top">
      <div class="tianmao-log">
        <img src="https://img.alicdn.com/tfs/TB1sGQlplFR4u4jSZFPXXanzFXa-90-80.png">
      </div>
        <div class="clnz">
      <img src="http://img.alicdn.com/tfs/TB1REjjZpY7gK0jSZKzXXaikpXa-209-75.png">
      <img src="http://img.alicdn.com/bao/uploaded/TB1khy8o.H1gK0jSZSyXXXtlpXa.jpg_80x80q90.jpg_.webp" id="top-img2">
      <h3 id="top-h3">潮流男装</h3>
      <span>爆款折扣疯抢</span>
    </div>

    <div class="ssxb">
        <img src="http://img.alicdn.com/tfs/TB1YoPwZAT2gK0jSZFkXXcIQFXa-209-75.png">
        <img src="http://img.alicdn.com/bao/uploaded/TB1u_OsyQvoK1RjSZFwSuwiCFXa.jpg_80x80q90.jpg_.webp" id="top-img2">
        <h3 id="top-h3">时尚箱包</h3>
        <span>9元9抢美包</span>
      </div>

      <div class="rmnz">
        <img src="http://img.alicdn.com/tfs/TB1w.kroTM11u4jSZPxXXahcXXa-209-75.png">
        <img src="http://img.alicdn.com/bao/uploaded/TB1a1ipikL0gK0jSZFAXXcA9pXa.jpg_80x80q90.jpg_.webp" id="top-img2">
        <h3 id="top-h3">热卖女装</h3>
        <span>限时包邮满减</span>
      </div>

      <div class="bkwj">
        <img src="http://img.alicdn.com/tfs/TB1AgYqZuH2gK0jSZJnXXaT1FXa-209-75.png">
        <img src="http://img.alicdn.com/bao/uploaded/O1CN010eZP7b253JF5rpC3p_!!6000000007470-0-yinhe.jpg_80x80q90.jpg_.webp" id="top-img2">
        <h3 id="top-h3">潮流玩具</h3>
        <span>爆款玩具推荐</span>
      </div>

      <div class="shbh">
        <img src="http://img.alicdn.com/tfs/TB18QffnRFR4u4jSZFPXXanzFXa-209-75.png">
        <img src="http://img.alicdn.com/bao/uploaded/TB1axdoceL2gK0jSZFmSuw7iXXa.jpg_80x80q90.jpg_.webp" id="top-img2">
        <h3 id="top-h3">生活百货</h3>
        <span>家具品质好货</span>
      </div>
    </div>
   <div class="cen">
          <div class="cen-left">   
          </div>
          <div class="cen-cen">
                                          <div class="cen-head">
                                            <a href="https://taobao.com"><div class="cen-head-log">淘宝网</div><a href="https://taobao.com"></a>
                                         
                                          <div class="cen-incen">
                                      <div class="smalldh">
                                       <div class="smalldh-one">宝贝</div>
                                       <div class="smalldh-two">天猫</div>
                                       <div class="smalldh-three">店铺</div>
                                      </div>

                                          <input type="search" class="search"  placeholder="🔍淘一淘">
                                          <button>搜索</button>
                                          <ul>
                                            <a href="#"><li>新款连衣裙</li></a>
                                            <a href="#"><li>四件套</li></a>
                                            <a href="#"><li>潮流T恤</li></a>
                                            <a href="#"><li>时尚女鞋</li></a>
                                            <a href="#"><li>短裤</li></a>
                                            <a href="#"><li>半身裙</li></a>
                                            <a href="#"><li>男士外套</li></a>
                                            <a href="#"><li>墙纸</li></a>
                                            <a href="#"><li>行车记录仪</li></a>
                                            <a href="#"><li>新款男鞋</li></a>
                                            <a href="#"><li>耳机</li></a>
                                            <a href="#"><li>时尚女包</li></a>
                                            <a href="#"><li>沙发</li></a>
                                          </ul>
                                          
                                          </div>
                                         
                                              <div class="redpack">
                                                扫我抢红包
                                             <img id="small-img" src="imgs/redpack.png">
                                            </div>
                                            </div> 
                                            <div class="cen-dh">
                                              <div class="dh-left">主题市场</div>
                                              <div class="dh-right">
                                                <a href="" id="dh-one">天猫</a>
                                                <a href="" id="dh-two">聚划算</a>
                                                <a href="" id="dh-three">天猫超市</a>
                                                <a href="" id="dh-four">淘抢购</a>
                                                <a href="" id="dh-five">电器城</a>
                                                <a href="" id="dh-six">司法拍卖</a>
                                                <a href="" id="dh-seven">淘宝心选</a>
                                                <a href="" id="dh-eight">飞猪旅行</a>
                                                <a href="" id="dh-nine">智能生活</a>
                                                <a href="" id="dh-ten">苏宁易购</a>
                                              </div>
                                            </div>
                                                          

                                                  <div class="cen-left-table">
                                                         <table>
                                                            <tr>
                                                              <td>女装/内衣/家具</td>
                                                            </tr>
                                                            <tr>
                                                              <td>女鞋/男鞋/箱包</td>
                                                            </tr>
                                                            <tr>
                                                              <td>母婴/童装/玩具</td>
                                                            </tr>
                                                            <tr>
                                                              <td>男装/运动户外</td>
                                                            </tr>
                                                            <tr>
                                                              <td>美妆/彩妆/个护</td>
                                                            </tr>
                                                            <tr>
                                                              <td>手机/数码/企业</td>
                                                            </tr>
                                                            <tr>
                                                              <td>大家电/生活电器</td>
                                                            </tr>
                                                            <tr>
                                                              <td>零食/生鲜/茶酒</td>
                                                            </tr>
                                                            <tr>
                                                              <td>厨具/收纳/清洁</td>
                                                            </tr>
                                                            <tr>
                                                              <td>家纺/家饰/鲜花</td>
                                                            </tr>
                                                         </table>
                                                  </div>
                                                         <div class="cen-main">
                                                           <div id="box"> 
                                                             <img id="lbt" src="imgs/0.jpg">
                                                             <button id="back"><</button>
                                                             <button id="next">></button>
                                                             <div id="img-one" class="imgs red"></div>
                                                             <div id="img-two" class="imgs"></div>
                                                             <div id="img-three" class="imgs"></div>
                                                             <div id="img-four" class="imgs"></div>
                                                             <div id="img-five" class="imgs"></div>
                                                            </div>
                                                             <img class="lbt-right"src="https://img.alicdn.com/imgextra/i2/6000000005559/O1CN01Uvm8BG1qw4MPVXecX_!!6000000005559-0-octopus.jpg_290x290q90.jpg_.webp">
                                                        <div class="cen-botom">
                                                             <img src="https://aecpm.alicdn.com/simba/img/TB1X6uHLVXXXXcCXVXXSutbFXXX.jpg"  class="cen-botom-leftimg">
                                                             <img src="https://aecpm.alicdn.com/simba/img/TB13xKuLVXXXXcHapXXSutbFXXX.jpg"  class="cen-botom-cenimg">
                                                               </div>
                                                               <img src="https://aecpm.alicdn.com/simba/img/TB1j4LLKpXXXXcbaXXXSutbFXXX.jpg" class="cen-botom-right">
                                                         </div>
                                                         
                                                  <div class="cen-cen-right">
                                                        <img src="https://gw.alicdn.com/tps/i3/TB1yeWeIFXXXXX5XFXXuAZJYXXX-210-210.png_50x50.jpg" class="cen-cen-right-log">
                                                         
                                                        <%
                                                        request.setCharacterEncoding("utf-8");
                                                        
                                                        String username = "";
                                                          if(request.getAttribute("username")==null){                                               
                                                           username = "请登录";
                                                          
                                                          }
                                                          
                                                          else{
                                                             username = request.getAttribute("username").toString();
                                                          }
                                                           user.username = username;
                                                         %>
                                                        <span id="username">Hi <%= username %></span>
                                                        <a class="cen-cen-right-a1" href="#">领淘金币抵钱</a>
                                                        <a class="cen-cen-right-a2" href="#">会员俱乐部</a>
                                                        <%
                                                        String dl = "";
                                                           if(username.equals("请登录")){
                                                                 dl = "登录";
                                                           }
                                                           else{
                                                              dl = "注销";
                                                              
                                                           }
                                                         %>
                                                        <a class="dl buto" id="zx"><%=  dl%></a>
                                                        <% if(dl.equals("登录")){
                                                             user.username = "";
                                                             user.account="";
                                                        } %>
                                                        <a href="register.jsp" class="zc buto">注册</a>
                                                        <a href="" class="kd buto" id="shoopCardbutton">购物车</a>

                                                                 <img src="https://img.alicdn.com/tfs/TB15R3vP7Y2gK0jSZFgXXc5OFXa-540-120.jpg" class="cen-cen-right-img">

                                                          <div class="tab-box">
                                                            <div class="tab-head">
                                                              <div class="tab-head-div current">公告</div>
                                                              <div class="tab-head-div">规则</div>
                                                              <div class="tab-head-div">论坛</div>
                                                              <div class="tab-head-div">安全</div>
                                                              <div class="tab-head-div">公益</div>
                                                            </div>
                                                            <div class="tab-body">
                                                              <div class="tab-body-div current"><a href="#">95公益周阿里、腾讯等六家公司同台联合做公益</a></div>
                                                              <div class="tab-body-div"><a href="#">新增《淘宝网汽配行业管理规范》公示通知</a></div>
                                                              <div class="tab-body-div"><a href="#">淘宝618大促排名&nbsp;&nbsp;金牌卖家志愿者招募</a></div>
                                                              <div class="tab-body-div"><a href="#">魔豆妈妈公益项目&nbsp;&nbsp;让母爱永不打烊！！</a></div>
                                                              <div class="tab-body-div"><a href="#">淘宝公益平台正式更名&nbsp;益起来商家招募即将截止</a></div>
                                                            </div>
                                                          </div>
                                                          <!--   中间最下面的切换框   -->

                                                                 <div class="bigBox">
                                                                   <div class="head-tab">
                                                                     <div class="head-div only">
                                                                       <div style="background: url(https://img.alicdn.com/tfs/TB1eiXTXlTH8KJjy0FiXXcRsXXa-24-595.png) 0 0 no-repeat;">
                                                                           
                                                                       </div>
                                                                       <span>充话费</span>
                                                                     </div>
                                                                     <div class="head-div  bottom-border">
                                                                        <div style="background: url(https://img.alicdn.com/tfs/TB1eiXTXlTH8KJjy0FiXXcRsXXa-24-595.png) 0 0 no-repeat;">
                                                                        
                                                                        </div>
                                                                        <span>旅行</span>
                                                                     </div>
                                                                     <div class="head-div bottom-border">
                                                                         <div style="background: url(https://img.alicdn.com/tfs/TB1eiXTXlTH8KJjy0FiXXcRsXXa-24-595.png) 0 0 no-repeat;">
                                                                       
                                                                        </div>
                                                                        <span>车险</span>
                                                                     </div>
                                                                     <div class="head-div bottom-border" style="padding-right:7px;">
                                                                        <div style="background: url(https://img.alicdn.com/tfs/TB1eiXTXlTH8KJjy0FiXXcRsXXa-24-595.png) 0 0 no-repeat;">
                                                                         
                                                                        </div>
                                                                        <span>游戏</span>
                                                                     </div>
                                                                    </div>
                                                                      <div class="body-tab">
                                                                        <div class="body-div only">
                                                                          <div class="body-body-tab just">
                                                                          <div>充话费</div>
                                                                          <div>充流量</div>
                                                                          <div>充固话</div>
                                                                          <div>充宽带</div>
                                                                        </div>
                                                                        <form class="chonghuafei" action="https://baidu.com" method="POST">
                                                                           <input type="text" placeholder="请输入电话号码" name="telephone" class="telephone">
                                                                           <select  class="telephone-price">
                                                                             <option value="10">10</option>
                                                                             <option value="50">50</option>
                                                                             <option value="100">100</option>
                                                                           </select>
                                                                           <span> 售价￥49.8元</span>
                                                                           <button>立即充值</button>
                                                                        </form>
                                                                      
                                                                       
                                                                      </div>
                                                                      <div class="body-div">
                                                                        <div class="body-body-tab just">
                                                                          <div>国内机票</div>
                                                                          <div>国际机票</div>
                                                                          <div>酒店客栈</div>
                                                                          <div>度假门票</div>
                                                                          <div>火车票</div>
                                                                        </div>
                                                                        <form class="chonghuafei" action="https://baidu.com" method="POST">
                                                                          <input type="text" placeholder="请输入出发城市" name="telephone" class="telephone">
                                                                          <select  class="telephone-price">
                                                                            <option value="10">北京</option>
                                                                            <option value="50">上海</option>
                                                                            <option value="100">广州</option>
                                                                          </select>
                                                                          <span > 售价￥ 49.8元</span>
                                                                          <button>立即购买</button>
                                                                       </form>
                                                                      </div>
                                                                      <div class="body-div">
                                                                        <div class="body-body-tab just">
                                                                          <div>车险</div>
                                                                          <div>意外险</div>
                                                                          <div>健康险</div>
                                                                          <div>旅行险</div>
                                                                          <div>财产险</div>
                                                                        </div>
                                                                        <form class="chonghuafei" action="https://baidu.com" method="POST">
                                                                        
                                                                          <select  class="telephone-price">
                                                                            <option value="10">车险</option>
                                                                            <option value="50">意外险</option>
                                                                            <option value="100">健康险</option>
                                                                          </select>
                                                                          <span > 售价￥ 100元</span>
                                                                          <button>立即购买</button>
                                                                       </form>
                                                                      </div>
                                                                      <div class="body-div">

                                                                        <div class="body-body-tab just">
                                                                          <div>手游</div>
                                                                          <div>端游</div>
                                                                          <div>4399小游戏</div>
                                                                          <div>小霸王</div>
                                                                        </div>
                                                                        <form class="chonghuafei" action="https://baidu.com" method="POST">
                                                                         <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3493817247,1259802092&fm=26&gp=0.jpg" id="game">
                                                                       </form>
                                                                      </div>
                                                                 </div>
                                                  </div>
                                    </div>
                                   
                          
          </div>
          <div class="cen-right">

          </div>
          <img src="http://img.alicdn.com/tfs/TB1QGsr04D1gK0jSZFsXXbldVXa-234-92.png" class="botom-img1">
          <img src="http://img.alicdn.com/tfs/TB1txMx07L0gK0jSZFAXXcA9pXa-234-92.png" class="botom-img2">
          <img src="http://img.alicdn.com/tfs/TB1sfsp01L2gK0jSZPhXXahvXXa-234-92.png" class="botom-img3">
          <img src="http://img.alicdn.com/tfs/TB1Ek5vnmslXu8jSZFuXXXg7FXa-234-92.png" class="botom-img4">
          <img src="http://img.alicdn.com/tfs/TB1WtLMoCR26e4jSZFEXXbwuXXa-234-92.png" class="botom-img5">
   </div>
  
</body>

<script>
function $(str){
  return document.getElementById(str);
}
  
var box = $('box');
       var back = $('back');
       var next = $('next');
       var lbt = $('lbt');
       var index = 0;
       back.onclick = function(){
           
           index--;
           if(index<0){
               index=4;
           }
           dh(index);
           lbt.setAttribute("src","imgs/"+index+".jpg");
       }
       next.onclick = function(){
           index++;
           
           if(index>4){
               index=0;
           }
           dh(index);
           lbt.setAttribute("src","imgs/"+index+".jpg");
       }
       var imgs = document.getElementsByClassName("imgs");
       box.onmouseover = function(){
       
           clearInterval(playTime);
           back.style.display = "block";
           next.style.display = "block";
          for(var i=0;i<imgs.length;i++){
            imgs[i].onclick = function(){
            for(var j=0;j<imgs.length;j++){
              if(imgs[j] == this){

                imgs[j].classList.add('red');
                
                index = j;
                lbt.setAttribute("src","imgs/"+index+".jpg");
              
            }
            else{
              imgs[j].classList.remove('red');
             
            }
          }
            }
          }
            
         }
          
           
        
       
       box.onmouseout = function(){
        back.style.display = "none";
           next.style.display = "none";
           playTime = setInterval(fun,2000);
       }

      
       
       var playTime = setInterval(fun,2000);
       function fun(){
        dh(index);
        lbt.setAttribute("src","imgs/"+index+".jpg");
        index++;
        
           if(index>4){
               index=0;
           }
          
       };
      
       function dh(index){
        for(var i=0;i<imgs.length;i++){
            if(i == index){
                imgs[i].classList.add("red");
            }
            else{
                imgs[i].classList.remove("red");
            }
        }
       };

</script>
<script src="JS/index.js"></script>
</html>
