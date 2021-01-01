  
  
  //获取标签栏的所有标签部分的元素对象
  var tabs1 = document.getElementsByClassName('tab-head-div');
  //获取标签栏的所有内容对象
  var divs1 = document.getElementsByClassName('tab-body-div');
  for(var i =0;i<tabs1.length;i++){
      tabs1[i].onmouseover = function(){
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
  
 
  var tabs2 = document.getElementsByClassName('head-div');
  var divs2 = document.getElementsByClassName('body-div');
  for(var i =0;i<tabs2.length;i++){
      tabs2[i].onmouseover = function(){
          for(var j=0;j<divs2.length;j++){
              if(tabs2[j] == this){
                  divs2[j].classList.add('only');
                  tabs2[j].classList.add('only');
                  tabs2[j].classList.remove('bottom-border');
              }
              else{ 
                  divs2[j].classList.remove('only');
                  tabs2[j].classList.add('bottom-border');
                  tabs2[j].classList.remove('only');
              }
          }
      };
  }

     //获取注销按钮
      var zx = $('zx');
      zx.onclick = function(){
    	  if(zx.innerText == "注销"){
    		  zx.innerText = "登录";
    		  location.href ="zx";
    		  $('username').innerText = "Hi 你好";
    		  alert("注销成功");
    		  
    	  }
    	  else{
    		  location.href="login.jsp";
    	  }
      };
      
        function $(str){
            return document.getElementById(str);
        };
      
    
    
       var butt = $('dh-three');
       butt.onclick = function(){
    	   if(zx.innerText=="登录"){
    		   alert("请先登录");
    		   butt.href="login.jsp";
    	   }
    	   else{
    		   butt.href = "tianmao.jsp";
    	   }
       };
       
     //获取购物车按钮
       var shopCard = $('shoopCardbutton');
       shopCard.onclick = function(){
    	   if(zx.innerText=="登录"){
    		   alert("请先登录");
    		   shopCard.href="login.jsp";
    	   }
    	   else{
    		   shopCard.href = "shoopCardSelect";
    	   }
       };
        




   















