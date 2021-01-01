
  //获取标签栏的所有标签部分的元素对象
  var tabs1 = document.getElementsByClassName('head-tab-div');
  //获取标签栏的所有内容对象
  var divs1 = document.getElementsByClassName('body-tab-div');
  for(var i =0;i<tabs1.length;i++){
      tabs1[i].onclick = function(){
          for(var j=0;j<divs1.length;j++){
              if(tabs1[j] == this){
                  divs1[j].classList.add('current');
                  tabs1[j].classList.add('current');
                  
              }
              else{ 
                  divs1[j].classList.remove('current');
                  tabs1[j].classList.remove('current');
              }
          }
      };
  }

 function $(str){
     return document.getElementById(str);
 }

$("submit-one").onclick = function(){
    $("username1").onfocus();
    $("username1").onblur();
    $("password1").onfocus();
    $("password1").onblur();
    if($("username-error1").style.display== "none" && $("password-error1").style.display == "none"){
        $("form-telephone").submit();
    }
    else{
        alert("请检测输入信息");
    }
} 

//淘宝号登陆验证
$("username1").onblur = function(){
    var error = document.getElementById("username-error1");
    var reg = /^1[34578]\d{9}$/;
    if($("username1").value.length == 0 ){
       
        error.innerText = "不能为空";
        error.style.display="block";
    }
    
    else if(!reg.test($("username1").value)){
        error.innerText = "手机号格式错误";
        error.style.display="block";
    }    
}
$("username1").onfocus = function(){
    var error = document.getElementById("username-error1");
    if(error.innerText != ""){
    $("username1").value = "";
    }
    error.style.display = "none";
    error.innerText = "";
}

//淘宝号密码验证
$("password1").onblur = function(){
    var error = document.getElementById("password-error1");
    var reg = /[a-zA-Z]{2,}[0-9]{6,}/g;
    if($("password1").value.length == 0 ){
       
        error.innerText = "不能为空";
        error.style.display="block";
    }
    else if(!reg.test($("password1").value)){
        error.innerText = "密码至少两个字母开头，至少6个数字";
        error.style.display="block";
    } 
}
$("password1").onfocus = function(){
    var error = document.getElementById("password-error1");
    if(error.innerText != ""){
    $("password1").value = "";
    }
    error.style.display = "none";
    error.innerText = "";
}
//短信登陆验证

$("username2").onblur = function(){
    var error = document.getElementById("username-error2");
    var reg = /^1[34578]\d{9}$/;
    if($("username2").value.length == 0 ){
       
        error.innerText = "不能为空";
        error.style.display="block";
    }
    else if(!reg.test($("username2").value)){
        error.innerText = "手机号格式错误";
        error.style.display="block";
    }
}
$("username2").onfocus = function(){
    var error = document.getElementById("username-error2");
    if(error.innerText != ""){
    $("username2").value = "";
    }
    error.style.display = "none";
    error.innerText = "";
}
$("password2").onfocus = function(){
    var error = document.getElementById("password-error2");
    if(error.innerText != ""){
        $("password2").value = "";
        }
    error.style.display = "none";
    error.innerText = "";
}
var submitTwo = $("submit-two");
submitTwo.onclick = function(){
 $("username2").onfocus();
 $("username2").onblur();
 $("password2").onfocus();
 $("password2").onblur();
 if($("username-error2").style.display== "none" && $("password-error2").style.display == "none"){
     $("form-yzcode").submit();
 }
 else{
     alert("请检测输入信息");
 }
}
//拖动验证
 var box = $('box');
 var wrrape = $('wrrape');
 var within = $('within');
 var btn = $('btn');
 var flag = false;
    btn.onmousedown = function(e){
         //鼠标按下滑块的位置
        var downX = e.clientX;
        btn.onmousemove = function(e){
            var moveX = e.clientX-downX;
             //移动的距离
             if(moveX>0){
            
            this.style.left=moveX+'px';
            within.style.width = moveX+'px';
             }
             if(moveX >= box.offsetWidth-btn.offsetWidth){
                within.style.color='#fff';
		within.innerHTML='验证成功';
		btn.onmousemove=null;
         btn.onmousedown=null;
         flag = true;
        
             }
        }
    }
    btn.onmouseup = function(){
      
        btn.onmousemove = null;
        if(!flag){
            btn.style.left = 0+'px';
            within.style.width = 0+'px';
        }
        else{
            $('form-picture').submit();
        }
    }
    var nowTime = $('nowTime');
    setInterval(getTime,1000);
       function getTime(){
           var now = new Date();
           var html = "";
           html+=now.getFullYear()+'年'+now.getMonth()+'月'+now.getDate()+"日"+now.getHours()+"时"+now.getMinutes()+'分'+now.getSeconds()+"秒";
           nowTime.innerText = html;
       }
       //验证码部分
       var randomCode=document.getElementById("random-code");
       function change(){
       // 验证码组成库
       var arrays=new Array( 
       '1','2','3','4','5','6','7','8','9','0', 
       'a','b','c','d','e','f','g','h','i','j', 
       'k','l','m','n','o','p','q','r','s','t', 
       'u','v','w','x','y','z', 
       'A','B','C','D','E','F','G','H','I','J', 
       'K','L','M','N','O','P','Q','R','S','T', 
       'U','V','W','X','Y','Z'        
             ); 
        // 重新初始化验证码
        codes ='';
        // 随机从数组中获取四个元素组成验证码
        for(var i = 0; i<4; i++){
         // 随机获取一个数组的下标
         var r = parseInt(Math.random()*arrays.length);
         codes += arrays[r];
        }
       // 验证码添加到input里
        randomCode.value = codes;
       }
        change();//加载显示在页面上
        randomCode.onclick = change;//单击更换验证码             
      //短信登录验证码验证
        $("password2").onblur = function(){
            var error = document.getElementById("password-error2");
            if($("password2").value.length == 0  ){
               
                error.innerText = "不能为空";
                error.style.display="block";
            }
            else if($("password2").value != codes){
                error.innerText = "验证码错误";
                error.style.display="block";
            }
          
        }
            //验证码验证
        var randomCode = $("random-code");
