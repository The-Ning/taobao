function $(str){
    return document.getElementById(str);}
    var username = $('username');
    var account = $('account');
    var password = $('password');
    var password1 = $('password1');
    var useryz = $('usernameyz');
    var passyz = $('passyz');
    var pass1yz = $('pass1yz');
    var accountyz = $('accountyz');
    var sub = $('sub');
  var flag1=flag2=flag3=flag4=false;
    username.onblur = function(){
        if(username.value.length==0){
            useryz.style.display="block";
            flag1=false;
        }
        else{
            flag1=true;
        }
    }
    username.onfocus = function(){
        if(!flag1){
            username.value="";
            useryz.style.display="none";
        }
    }
    password.onblur = function(){
        var reg = /[a-zA-Z]{2,}[0-9]{6,}/g;
        if(!reg.test(password.value)){
            passyz.style.display="block";
           
            flag2=false;
        }
        else{
            flag2=true;
        }
    }
    password.onfocus = function(){
        if(!flag2){
            password.value="";
            passyz.style.display="none";
        }
    }
    account.onblur = function(){
        var reg = /^1[34578]\d{9}$/;
        if(!reg.test(account.value)){
            accountyz.style.display="block";
            flag3=false;
        }
        else{
            flag3=true;
        }
    }
    account.onfocus = function(){
        if(!flag3){
            account.value="";
            accountyz.style.display="none";
        }
    }
    password1.onblur=function(){
        if(password1.value != password.value){
            flag4=false;
            pass1yz.style.display="block";
        }
      else{
          flag4=true;
      }
    }
    password1.onfocus=function(){
        if(!flag4){
            password1.value="";
            pass1yz.style.display="none"
        }
    }
    sub.onclick = function(){
        username.onfocus();
        username.onblur();
        account.onfocus();
        account.onblur();
        password.onfocus();
        password.onblur();
        password1.onfocus();
        password1.onblur();
        if(flag1 && flag2 && flag3 && flag4){
            document.querySelector('form').submit();
        }
    }
