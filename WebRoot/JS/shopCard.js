function $(str){
    return document.getElementById(str);
}


     var reduces = document.getElementsByClassName('cart-reduce');
     var adds = document.getElementsByClassName('cart-add');
     var nums = document.getElementsByClassName('cart-num');
     
     $('backIndex').onclick = function(){
  	   $('backIndex').submit();
     };
  /*   for(var j=0;j<nums.length;j++){
     reduces[j].onclick = function(){
         for(var k=0;k<nums.length;k++){
             if(reduces[k] == this){
         if(nums[k].value>1)
         nums[k].value=parseInt(nums[k].value)-1;
        
     }
    }
    }
}
    for(var k=0;k<nums.length;k++){
        
     adds[k].onclick = function(){
         for(var j=0;j<nums.length;j++){
            if(adds[j] == this){
         nums[j].value=parseInt(nums[j].value)+1;
         }
     }
    }
         }
    
     var amounts = document.getElementsByClassName('cart-num');
     var prices = document.getElementsByClassName('cart-price');
     var totals = document.getElementsByClassName('cart-subtotal');
     for(var i=0;i<amounts.length;i++){
     totals[i].innerHTML = parseInt(amounts[i].innerHTML*5);//(parseFloat(prices[i].innerHTML).toFixed(2));
     }
     */