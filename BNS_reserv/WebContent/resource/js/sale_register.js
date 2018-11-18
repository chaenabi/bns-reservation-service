/*$(document).ready(function () {*/ // 페이지 오픈시 검은마천루 radio 자동선택
$('input[type="radio"]').click(function(){
	  
	  if($(this).attr("value")=="검은 마천루"){	    
		  $('.info').hide('slow');
		  $('.info2').hide('slow');
		  
		  $(".named2").hide('slow');  
		  $(".named3").hide('slow');  
		  $(".named4").hide('slow');
		  $(".named").show('slow');
		  
		  $(".sale-item2").hide('slow');
		  $(".sale-item3").hide('slow');
		  $(".sale-item4").hide('slow');
		  $(".sale-item").show('slow');
		  
		  $('.btn_submit').show('slow');
		  
	  } else  if($(this).attr("value")=="소용돌이 사원"){
		  $('.info').hide('slow');
		  $('.info2').hide('slow');
		  
		  $(".named").hide('slow');  
		  $(".named3").hide('slow');  
		  $(".named4").hide('slow');
		  $(".named2").show('slow');
		  
		  $(".sale-item").hide('slow');
		  $(".sale-item3").hide('slow');
		  $(".sale-item4").hide('slow');
		  $(".sale-item2").show('slow');
		  
		  $('.btn_submit').show('slow');
		  
	  }    else if($(this).attr("value")=="태천왕릉"){
		  $('.info').hide('slow');
		  $('.info2').hide('slow');
		  
		  $(".named").hide('slow');   
		  $(".named2").hide('slow');   
		  $(".named4").hide('slow');
		  $(".named3").show('slow');
		  
		  $(".sale-item").hide('slow');
		  $(".sale-item2").hide('slow');
		  $(".sale-item4").hide('slow');
		  $(".sale-item3").show('slow');
	 
		  $('.btn_submit').show('slow');
	  }   
	  
	  else if($(this).attr("value")=="적몽의 비원"){
	    $('.info').hide('slow');
		  $('.info2').hide('slow');
		  
		   $(".named").hide('slow');   
		  $(".named2").hide('slow');   
		  $(".named3").hide('slow');
		    $(".named4").show('slow');
		    
		 $(".sale-item").hide('slow');
		  $(".sale-item2").hide('slow');
		  $(".sale-item3").hide('slow');
		    $(".sale-item4").show('slow');
		    
			  $('.btn_submit').show('slow');
	  }   
	  
	  else {
		  $('.info2').show('slow');
	  }
	  
	});
/*$('#black').trigger('click');  // 페이지 오픈시 검은마천루 radio 자동선택
});*/


$('input[type="checkbox"]').click(function(){
	
	 if($(this).attr("value")=="천독귀걸이(번개)"){	    
		 $("#a").show('slow');
	 }
	 if($(this).attr("value")=="천독귀걸이(화염)"){	    
		 $(".writeprice").show('slow');
	 }
	 if($(this).attr("value")=="천독귀걸이()"){	    
		 $(".writeprice").show('slow');
	 }
	 if($(this).attr("value")=="천독귀걸이(번개)"){	    
		 $(".writeprice").show('slow');
	 }

});
