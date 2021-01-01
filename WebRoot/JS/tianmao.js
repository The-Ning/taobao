function $(str){
    return document.getElementById(str);
}
   $('shoopCart').onclick = function(){
       location.href = 'shoopCardSelect';
   }  
   $('backIndex').onclick = function(){
	   $('backIndex').submit();
   }
   var submitss = document.getElementsByClassName('form-submit');
  var forms = document.getElementsByTagName('form');
  for(var i=0;i<submitss.length;i++){
      submitss[i].onclick= function(){
         for(var j=0;j<submitss.length;j++){
             if(this == submitss[j])
         forms[j+1].submit();
          
         }
      }
  }