// 팀명 중복 체크
$("#multi_ck").click(e=>{

	var team_name = $('#team_name').val();

	if($.trim(team_name) == "") {
		alert('아이디를 입력해주세요');
	} else {
     			   $.ajax({
     		            async: true,
     		            type : 'get',
     		            data :  $('#sale_register').serialize(),
     		            url : "/BNS_reserv/teamidcheckServ",
     		            dataType : 'json',
     		            contentType: "application/json; charset=UTF-8",
     		            timeout: 3000,
     		            success : function(data) {
     		            		// alert(JSON.stringify(data));
     		            		// alert(data.result);
     		            		if($.trim(data.result)  ==  "false") {
		     		            		alert("사용할 수 있는 팀명입니다.");
		     		            		$('#team_name').attr("readonly", true);		
		     		        			$("#team_name").attr('style',  'color:gray');
		     		        			
		     		        			$("#btn_submit").click(e=>{
		     		        			
		     		        				var go_date = $('#go_date').val();
		     		        				var go_time = $('#go_time').val();
		     		        				
		     		        				if($.trim(go_date) == "") {
		     		        					alert("출발 날짜는 필수입니다.");
		     		        				} else if ($.trim(go_time) == "") {
		     		        					alert("출발 시간은 필수입니다.");
		     		        				} else if($.trim($('.writeprice'))=="") {
		     		        					alert("dd");
		     		        				} else {
		     		        				var form = document.getElementById("sale_register");
		     		        				form.submit();
		     		        				}
		     		        			
		     		        			});
		     		        			
     		            		} else {
     		            			alert("이미 존재하는 팀명입니다.");
     		            			
     		            			$("#btn_submit").click(e=>{
     		            				
     		            				alert("먼저 사용할 수 있는 팀명을 결정해주세요.!");
     		            				
     		            			})
     		            			
     		            		}			

     		            },
     		           error: function() {
     		             
     		        	  alert("오류 발생 !! 관리자에게 문의해주세요");
     		        	  alert("NCSoft 점검시간중에는 사용이 불가능합니다...!");
     		            }
     			  
     			   });
	}
});
		        	
$("#btn_submit").click(e=>{
	if ($.trim($('#team_name').val()) == "") {
		alert("먼저 팀명 중복체크를 해주세요");
			
	} 
});

$("#bs_1st, #bs_2nd, #bs_3rd, #bs_4th,"
+	"#vt_1st, #vt_2nd, #vt_3rd, #vt_4th," 
+	"#tw_1st, #tw_2nd, #tw_3rd, #tw_4th," 
+	"#rd_1st, #rd_2nd, #rd_3rd").change(function(){

	var item_type = $("input[name=raid_type]:checked").val();
	var boss_level = $(this).val();

		var request_itemlist= {"action":"showitemlist",	    			
				"item_type":item_type,
				"boss_level":boss_level
				}

		$.getJSON("../../ItemServ", request_itemlist, function(data){
			
			var raid_type = data.raid_type;
			var boss_level = data.boss_level;
		
		// 검은 마천루
			if(raid_type=="검은 마천루" && boss_level==1) {

					for(var i=0;i<data.item_code.length;i++){

						htmlTag = ''; 
						text ='';
						itemList ='';
						
						itemList = "<div class='sale-item-name-bs1'>";
						itemList += "<a>"+ data.item_name[i] +"</a>";
						itemList += "</div>";
						itemList += "<label class='checkbox'>";
						itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
						itemList += "<i class='icon-checkbox'></i>";
						itemList += "</label>";
						itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

						text=htmlTag+itemList;
						  
						  $('.bs-sale-item1:eq('+i+')').html(text);
					}
					
					// 만들어진 체크박스 이벤트 바인딩
					$('.bs-sale-item1').find('input[type=checkbox]').bind("change", bs_sale_item1_event);

					// 체크박스 클릭시 나타나는 input 태그에 내용이 적힐경우.. 서브밋 버튼이 등장하도록 이벤트 바인딩
					$('.bs-sale-item1').find('.writeprice').bind("keyup change", submit_btn_event); 
				
			} else if (raid_type=="검은 마천루" && boss_level==2) {
				
						for(var i=0;i<data.item_code.length;i++){
						htmlTag = ''; 
						text ='';
						itemList ='';
		
						itemList = "<div class='sale-item-name-bs2'>";
						itemList += "<a>"+ data.item_name[i] +"</a>";
						itemList += "</div>";
						itemList += "<label class='checkbox'>";
						itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
						itemList += "<i class='icon-checkbox'></i>";
						itemList += "</label>";
						itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";
		
						text=htmlTag+itemList;
						  
						  $('.bs-sale-item2:eq('+i+')').html(text);
					}
					  
					$('.bs-sale-item2').find('input[type=checkbox]').bind("change", bs_sale_item2_event); 
					$('.bs-sale-item2').find('.writeprice').bind("keyup change", submit_btn_event); 
					
			} else if (raid_type=="검은 마천루" && boss_level==3) {
		
				for(var i=0;i<data.item_code.length;i++){
					htmlTag = ''; 
					text ='';
					itemList ='';
	
					itemList = "<div class='sale-item-name-bs3'>";
					itemList += "<a>"+ data.item_name[i] +"</a>";
					itemList += "</div>";
					itemList += "<label class='checkbox'>";
					itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
					itemList += "<i class='icon-checkbox'></i>";
					itemList += "</label>";
					itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";
	
					text=htmlTag+itemList;
					  
					  $('.bs-sale-item3:eq('+i+')').html(text);
				}
				  
				$('.bs-sale-item3').find('input[type=checkbox]').bind("change", bs_sale_item3_event); 
				$('.bs-sale-item3').find('.writeprice').bind("keyup change", submit_btn_event); 
				  
		} else if (raid_type=="검은 마천루" && boss_level==4) {

			for(var i=0;i<data.item_code.length;i++){
				htmlTag = ''; 
				text ='';
				itemList ='';

				itemList = "<div class='sale-item-name-bs4'>";
				itemList += "<a>"+ data.item_name[i] +"</a>";
				itemList += "</div>";
				itemList += "<label class='checkbox'>";
				itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
				itemList += "<i class='icon-checkbox'></i>";
				itemList += "</label>";
				itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

				text=htmlTag+itemList;
				  
				  $('.bs-sale-item4:eq('+i+')').html(text);
			}
			  
			$('.bs-sale-item4').find('input[type=checkbox]').bind("change", bs_sale_item4_event); 
			$('.bs-sale-item4').find('.writeprice').bind("keyup change", submit_btn_event); 
		} else if(raid_type=="소용돌이 사원" && boss_level==1) {
			
			for(var i=0;i<data.item_code.length;i++){
				htmlTag = ''; 
				text ='';
				itemList ='';

				itemList = "<div class='sale-item-name-vt1'>";
				itemList += "<a>"+ data.item_name[i] +"</a>";
				itemList += "</div>";
				itemList += "<label class='checkbox'>";
				itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
				itemList += "<i class='icon-checkbox'></i>";
				itemList += "</label>";
				itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

				text=htmlTag+itemList;
				  
				  $('.vt-sale-item1:eq('+i+')').html(text);
			}
			  
			$('.vt-sale-item1').find('input[type=checkbox]').bind("change", vt_sale_item1_event); 
			$('.vt-sale-item1').find('.writeprice').bind("keyup change", submit_btn_event); 
			
		} else if (raid_type=="소용돌이 사원" && boss_level==2) {

			for(var i=0;i<data.item_code.length;i++){
				htmlTag = ''; 
				text ='';
				itemList ='';

				itemList = "<div class='sale-item-name-vt2'>";
				itemList += "<a>"+ data.item_name[i] +"</a>";
				itemList += "</div>";
				itemList += "<label class='checkbox'>";
				itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
				itemList += "<i class='icon-checkbox'></i>";
				itemList += "</label>";
				itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

				text=htmlTag+itemList;
				  
				  $('.vt-sale-item2:eq('+i+')').html(text);
			}
			  
			$('.vt-sale-item2').find('input[type=checkbox]').bind("change", vt_sale_item2_event); 
			$('.vt-sale-item2').find('.writeprice').bind("keyup change", submit_btn_event); 
		} else if (raid_type=="소용돌이 사원" && boss_level==3) {
	
			for(var i=0;i<data.item_code.length;i++){
				htmlTag = ''; 
				text ='';
				itemList ='';

				itemList = "<div class='sale-item-name-vt3'>";
				itemList += "<a>"+ data.item_name[i] +"</a>";
				itemList += "</div>";
				itemList += "<label class='checkbox'>";
				itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
				itemList += "<i class='icon-checkbox'></i>";
				itemList += "</label>";
				itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

				text=htmlTag+itemList;
				  
				  $('.vt-sale-item3:eq('+i+')').html(text);
			}
			  
			$('.vt-sale-item3').find('input[type=checkbox]').bind("change", vt_sale_item3_event); 
			$('.vt-sale-item3').find('.writeprice').bind("keyup change", submit_btn_event); 
			  
	} else if (raid_type=="소용돌이 사원" && boss_level==4) {

		
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-vt4'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.vt-sale-item4:eq('+i+')').html(text);
		}
		  
		$('.vt-sale-item4').find('input[type=checkbox]').bind("change", bs_sale_item4_event); 
		$('.vt-sale-item4').find('.writeprice').bind("keyup change", submit_btn_event); 
		
			  
	} // 태천왕릉
	else if(raid_type=="태천왕릉" && boss_level==1) {
		
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-tw1'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.tw-sale-item1:eq('+i+')').html(text);
		}
		  
		$('.tw-sale-item1').find('input[type=checkbox]').bind("change", tw_sale_item1_event); 
		$('.tw-sale-item1').find('.writeprice').bind("keyup change", submit_btn_event); 
		
	} else if (raid_type=="태천왕릉" && boss_level==2) {

		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-tw2'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.tw-sale-item2:eq('+i+')').html(text);
		}
		  
		$('.tw-sale-item2').find('input[type=checkbox]').bind("change", tw_sale_item2_event); 
		$('.tw-sale-item2').find('.writeprice').bind("keyup change", submit_btn_event); 
	} else if (raid_type=="태천왕릉" && boss_level==3) {

		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-tw3'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.tw-sale-item3:eq('+i+')').html(text);
		}
		  
		$('.tw-sale-item3').find('input[type=checkbox]').bind("change", tw_sale_item3_event); 
		$('.tw-sale-item3').find('.writeprice').bind("keyup change", submit_btn_event); 
		  
	} else if (raid_type=="태천왕릉" && boss_level==4) {
	
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-tw4'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.tw-sale-item3:eq('+i+')').html(text);
		}
		  
		$('.tw-sale-item4').find('input[type=checkbox]').bind("change", tw_sale_item3_event); 
		$('.tw-sale-item4').find('.writeprice').bind("keyup change", submit_btn_event); 
	
	}  // 적몽의 비원
	else if(raid_type=="적몽의 비원" && boss_level==1) {
		
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-rd1'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.rd-sale-item1:eq('+i+')').html(text);
		}
		  
		$('.rd-sale-item1').find('input[type=checkbox]').bind("change", rd_sale_item1_event); 
		$('.rd-sale-item1').find('.writeprice').bind("keyup change", submit_btn_event); 
		
	} else if (raid_type=="적몽의 비원" && boss_level==2) {
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-rd2'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.rd-sale-item2:eq('+i+')').html(text);
		}
		  
		$('.rd-sale-item2').find('input[type=checkbox]').bind("change", rd_sale_item2_event); 
		$('.rd-sale-item2').find('.writeprice').bind("keyup change", submit_btn_event); 
	} else if (raid_type=="적몽의 비원" && boss_level==3) {
	
		for(var i=0;i<data.item_code.length;i++){
			htmlTag = ''; 
			text ='';
			itemList ='';

			itemList = "<div class='sale-item-name-rd3'>";
			itemList += "<a>"+ data.item_name[i] +"</a>";
			itemList += "</div>";
			itemList += "<label class='checkbox'>";
			itemList += "<input type='checkbox' id='"+data.item_code[i]+"' name='sale_items' value='"+data.item_name[i]+"'>";
			itemList += "<i class='icon-checkbox'></i>";
			itemList += "</label>";
			itemList += "<input type='text' id='"+data.item_code[i]+"_price' name='sale_price' class='writeprice' placeholder='금액'>";

			text=htmlTag+itemList;
			  
			  $('.rd-sale-item3:eq('+i+')').html(text);
		}
		  
		$('.rd-sale-item3').find('input[type=checkbox]').bind("change", rd_sale_item3_event); 
		$('.rd-sale-item3').find('.writeprice').bind("keyup change", submit_btn_event); 
		  
	} else {
		alert("아니!? 이 메시지를 어떻게 발견하신거죠??");
	} 
			
});

});


//팀등록하기 서브밋 버튼
function submit_btn_event(e) {
	
		    $('#btn_submit').show();
		
}

// $(document).ready(function () {/// 페이지 오픈시 검은마천루 radio 자동선택
// 던전별 네임드 체크박스 표시기

$('input[type="radio"]').click(function() {

	if ($(this).attr("value") == "검은 마천루") {
		$('.info').hide();
		$('.info2').hide();

		$(".named2").hide();
		$(".named3").hide();
		$(".named4").hide();
		$(".named").show('fast');

		$('.vt-sale-item1').hide();
		$('.vt-sale-item2').hide();
		$('.vt-sale-item3').hide();
		$('.vt-sale-item4').hide();
		
		$('.tw-sale-item1').hide();
		$('.tw-sale-item2').hide();
		$('.tw-sale-item3').hide();
		$('.tw-sale-item4').hide();
		
		$('.rd-sale-item1').hide();
		$('.rd-sale-item2').hide();
		$('.rd-sale-item3').hide();
		
	} else if ($(this).attr("value") == "소용돌이 사원") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named3").hide();
		$(".named4").hide();
		$(".named2").show('fast');

		$('.bs-sale-item1').hide();
		$('.bs-sale-item2').hide();
		$('.bs-sale-item3').hide();
		$('.bs-sale-item4').hide();
		
		$('.tw-sale-item1').hide();
		$('.tw-sale-item2').hide();
		$('.tw-sale-item3').hide();
		$('.tw-sale-item4').hide();
		
		$('.rd-sale-item1').hide();
		$('.rd-sale-item2').hide();
		$('.rd-sale-item3').hide();
		
		
	} else if ($(this).attr("value") == "태천왕릉") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named2").hide();
		$(".named4").hide();
		$(".named3").show('fast');
		
		$('.bs-sale-item1').hide();
		$('.bs-sale-item2').hide();
		$('.bs-sale-item3').hide();
		$('.bs-sale-item4').hide();
		
		$('.vt-sale-item1').hide();
		$('.vt-sale-item2').hide();
		$('.vt-sale-item3').hide();
		$('.vt-sale-item4').hide();
		
		$('.rd-sale-item1').hide();
		$('.rd-sale-item2').hide();
		$('.rd-sale-item3').hide();
		
	
	} else if ($(this).attr("value") == "적몽의 비원") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named2").hide();
		$(".named3").hide();
		$(".named4").show('fast');
		
		$('.bs-sale-item1').hide();
		$('.bs-sale-item2').hide();
		$('.bs-sale-item3').hide();
		$('.bs-sale-item4').hide();
		
		$('.vt-sale-item1').hide();
		$('.vt-sale-item2').hide();
		$('.vt-sale-item3').hide();
		$('.vt-sale-item4').hide();
		
		$('.tw-sale-item1').hide();
		$('.tw-sale-item2').hide();
		$('.tw-sale-item3').hide();
		$('.tw-sale-item4').hide();
	
	} else {
		$('.info2').show('fast');
	}
});
// 네임드별 체크박스 활성화 유무
// 검은 마천루 1~4네임드 체크박스
$('#bs_1st').change(function() {
	if ($("#bs_1st").is(":checked")) {
	$('.bs-sale-item1').show();
	} else {
		$(".bs-sale-item1").hide('fast');
	}
});

$('#bs_2nd').change(function() {
	if ($("#bs_2nd").is(":checked")) {
	$('.bs-sale-item2').show();
	} else {
		$(".bs-sale-item2").hide('fast');
	}
});

$('#bs_3rd').change(function() {
	if ($("#bs_3rd").is(":checked")) {
	$('.bs-sale-item3').show();
	} else {
		$(".bs-sale-item3").hide('fast');
	}
});

$('#bs_4th').change(function() {
	if ($("#bs_4th").is(":checked")) {
	$('.bs-sale-item4').show();
	} else {
		$(".bs-sale-item4").hide('fast');
	}
});

// 소용돌이 사원 1~4네임드 체크박스
$('#vt_1st').change(function() {
	if ($("#vt_1st").is(":checked")) {
	$('.vt-sale-item1').show();
	} else {
		$(".vt-sale-item1").hide('fast');
	}
});

$('#vt_2nd').change(function() {
	if ($("#vt_2nd").is(":checked")) {
	$('.vt-sale-item2').show();
	} else {
		$(".vt-sale-item2").hide('fast');
	}
});

$('#vt_3rd').change(function() {
	if ($("#vt_3rd").is(":checked")) {
	$('.vt-sale-item3').show();
	} else {
		$(".vt-sale-item3").hide('fast');
	}
});

$('#vt_4th').change(function() {
	if ($("#vt_4th").is(":checked")) {
	$('.vt-sale-item4').show();
	} else {
		$(".vt-sale-item4").hide('fast');
	}
});

// 태천왕릉 1~4네임드 체크박스
$('#tw_1st').change(function() {
	if ($("#tw_1st").is(":checked")) {
	$('.tw-sale-item1').show();
	
	} else {
		$(".tw-sale-item1").hide('fast');

	}
});

$('#tw_2nd').change(function() {
	if ($("#tw_2nd").is(":checked")) {
	$('.tw-sale-item2').show();
	} else {
		$(".tw-sale-item2").hide('fast');
	}
});

$('#tw_3rd').change(function() {
	if ($("#tw_3rd").is(":checked")) {
	$('.tw-sale-item3').show();
	} else {
		$(".tw-sale-item3").hide('fast');
	}
});

$('#tw_4th').change(function() {
	if ($("#tw_4th").is(":checked")) {
	$('.tw-sale-item4').show();
	} else {
		$(".tw-sale-item4").hide('fast');
	}
});

// 적몽의 비원 1~3네임드 체크박스
$('#rd_1st').change(function() {
	if ($("#rd_1st").is(":checked")) {
	$('.rd-sale-item1').show();
	} else {
		$(".rd-sale-item1").hide('fast');
	}
});

$('#rd_2nd').change(function() {
	if ($("#rd_2nd").is(":checked")) {
	$('.rd-sale-item2').show();
	} else {
		$(".rd-sale-item2").hide('fast');
	}
});

$('#rd_3rd').change(function() {
	if ($("#rd_3rd").is(":checked")) {
	$('.rd-sale-item3').show();
	} else {
		$(".rd-sale-item3").hide('fast');
	}
});

// 날짜 선택 API
function showdatetime() {
$("#go_date").datetimepicker({
	locale : 'ko',
	format : 'YYYY/MM/DD',
	showClose : true,
	showClear : true,
	showTodayButton : true,
	stepping : 30,
	// defaultDate : new Date(),
	sideBySide : true
});
}

// $('#black').trigger('click'); }); // 페이지 오픈시 검은마천루 radio 자동선택

// 체크박스 금액 표시기	
// 마천루
// 마천루 1네임드
function bs_sale_item1_event(e) {
	
	  if($("#bs_tujang_ring1").is(":checked")) {
		  $("#bs_tujang_ring1_price").show('fast');
	  } else {
		  $('#bs_tujang_ring1_price').hide('fast');
	  }
	  
	  if ($("#bs_tujang_ring2").is(":checked")) {
			$("#bs_tujang_ring2_price").show('fast');
	  } else {
			$('#bs_tujang_ring2_price').hide('fast');
	  }
	  
	  if ($("#bs_tuji_ring1").is(":checked")) {
			$("#bs_tuji_ring1_price").show('fast');
		} else {
			$('#bs_tuji_ring1_price').hide('fast');
		}
	  
	  if ($("#bs_tuji_ring2").is(":checked")) {
			$("#bs_tuji_ring2_price").show('fast');
		} else {
			$('#bs_tuji_ring2_price').hide('fast');
		}
	
	  if ($("#bs_tuhon_ring1").is(":checked")) {
			$("#bs_tuhon_ring1_price").show('fast');
		} else {
			$('#bs_tuhon_ring1_price').hide('fast');
		}
	  
	  if ($("#bs_tuhon_ring2").is(":checked")) {
			$("#bs_tuhon_ring2_price").show('fast');
		} else {
			$('#bs_tuhon_ring2_price').hide('fast');
		}
}

//마천루 2네임드
function bs_sale_item2_event(e) {
	if ($("#bs_tujang_earring1").is(":checked")) {
		$("#bs_tujang_earring1_price").show('fast');
	} else {
		$('#bs_tujang_earring1_price').hide('fast');
		
	}
	
	if ($("#bs_tujang_earring2").is(":checked")) {
		$("#bs_tujang_earring2_price").show('fast');
	} else {
		$('#bs_tujang_earring2_price').hide('fast');
	}
	
	if ($("#bs_tuji_earring1").is(":checked")) {
		$("#bs_tuji_earring1_price").show('fast');
	} else {
		$('#bs_tuji_earring1_price').hide('fast');
	}
	
	if ($("#bs_tuji_earring2").is(":checked")) {
		$("#bs_tuji_earring2_price").show('fast');
	} else {
		$('#bs_tuji_earring2_price').hide('fast');
	}
	
	if ($("#bs_tuhon_earring1").is(":checked")) {
		$("#bs_tuhon_earring1_price").show('fast');
	} else {
		$('#bs_tuhon_earring1_price').hide('fast');
	}
	
	if ($("#bs_tuhon_earring2").is(":checked")) {
		$("#bs_tuhon_earring2_price").show('fast');
	} else {
		$('#bs_tuhon_earring2_price').hide('fast');
	}
}

// 마천루 3네임드
function bs_sale_item3_event(e) {
	if ($("#bs_tujang_ring3").is(":checked")) {
		$("#bs_tujang_ring3_price").show('fast');
	} else {
		$('#bs_tujang_ring3_price').hide('fast');
	}
	if ($("#bs_tujang_ring4").is(":checked")) {
		$("#bs_tujang_ring4_price").show('fast');
	} else {
		$('#bs_tujang_ring4_price').hide('fast');
	}
	if ($("#bs_tuji_ring3").is(":checked")) {
		$("#bs_tuji_ring3_price").show('fast');
	} else {
		$('#bs_tuji_ring3_price').hide('fast');
	}
	if ($("#bs_tuji_ring4").is(":checked")) {
		$("#bs_tuji_ring4_price").show('fast');
	} else {
		$('#bs_tuji_ring4_price').hide('fast');
	}
	if ($("#bs_tuhon_ring3").is(":checked")) {
		$("#bs_tuhon_ring3_price").show('fast');
	} else {
		$('#bs_tuhon_ring3_price').hide('fast');
	}
	if ($("#bs_tuhon_ring4").is(":checked")) {
		$("#bs_tuhon_ring4_price").show('fast');
	} else {
		$('#bs_tuhon_ring4_price').hide('fast');
	}
	if ($("#bs_tujang_earring3").is(":checked")) {
		$("#bs_tujang_earring3_price").show('fast');
	} else {
		$('#bs_tujang_earring3_price').hide('fast');
	}
	if ($("#bs_tujang_earring4").is(":checked")) {
		$("#bs_tujang_earring4_price").show('fast');
	} else {
		$('#bs_tujang_earring4_price').hide('fast');
	}
	if ($("#bs_tuji_earring3").is(":checked")) {
		$("#bs_tuji_earring3_price").show('fast');
	} else {
		$('#bs_tuji_earring3_price').hide('fast');
	}
	if ($("#bs_tuji_earring4").is(":checked")) {
		$("#bs_tuji_earring4_price").show('fast');
	} else {
		$('#bs_tuji_earring4_price').hide('fast');
	}
	if ($("#bs_tuhon_earring3").is(":checked")) {
		$("#bs_tuhon_earring3_price").show('fast');
	} else {
		$('#bs_tuhon_earring3_price').hide('fast');
	}
	if ($("#bs_tuhon_earring4").is(":checked")) {
		$("#bs_tuhon_earring4_price").show('fast');
	} else {
		$('#bs_tuhon_earring4_price').hide('fast');
	}
	
}

//마천루 4네임드
function bs_sale_item4_event(e) {
	if ($("#hukrin").is(":checked")) {
		$("#hukrin_price").show('fast');
	} else {
		$('#hukrin_price').hide('fast');
	}
	if ($("#gyukgol").is(":checked")) {
		$("#gyukgol_price").show('fast');
	} else {
		$('#gyukgol_price').hide('fast');
	}
	if ($("#ginki").is(":checked")) {
		$("#ginki_price").show('fast');
	} else {
		$('#ginki_price').hide('fast');
	}
	if ($("#bs_gang").is(":checked")) {
		$("#bs_gang_price").show('fast');
	} else {
		$('#bs_gang_price').hide('fast');
	}
}
	
// 소용돌이 사원
// 소용돌이 사원 1네임드
function vt_sale_item1_event(e) {
	if ($("#vt_gon_tujang").is(":checked")) {
		$("#vt_gon_tujang_price").show('fast');
	} else {
		$('#vt_gon_tujang_price').hide('fast');
	}
	
	if ($("#vt_sun_tujang").is(":checked")) {
		$("#vt_sun_tujang_price").show('fast');
	} else {
		$('#vt_sun_tujang_price').hide('fast');
	}
	
	if ($("#vt_gon_tuji").is(":checked")) {
		$("#vt_gon_tuji_price").show('fast');
	} else {
		$('#vt_gon_tuji_price').hide('fast');
	}
	if ($("#vt_sun_tuji").is(":checked")) {
		$("#vt_sun_tuji_price").show('fast');
	} else {
		$('#vt_sun_tuji_price').hide('fast');
	}
	
	if ($("#vt_gon_tuhon").is(":checked")) {
		$("#vt_gon_tuhon_price").show('fast');
	} else {
		$('#vt_gon_tuhon_price').hide('fast');
	}
	if ($("#vt_sun_tuhon").is(":checked")) {
		$("#vt_sun_tuhon_price").show('fast');
	} else {
		$('#vt_sun_tuhon_price').hide('fast');
	}
	
}

// 소용돌이 사원 2네임드
function vt_sale_item2_event(e) {
	if ($("#vt_tujang1").is(":checked")) {
		$("#vt_tujang1_price").show('fast');
	} else {
		$('#vt_tujang1_price').hide('fast');
	}
	if ($("#vt_tujang2").is(":checked")) {
		$("#vt_tujang2_price").show('fast');
	} else {
		$('#vt_tujang2_price').hide('fast');
	}
	if ($("#vt_tuji1").is(":checked")) {
		$("#vt_tuji1_price").show('fast');
	} else {
		$('#vt_tuji1_price').hide('fast');
	}
	if ($("#vt_tuji2").is(":checked")) {
		$("#vt_tuji2_price").show('fast');
	} else {
		$('#vt_tuji2_price').hide('fast');
	}
	if ($("#vt_tuhon1").is(":checked")) {
		$("#vt_tuhon1_price").show('fast');
	} else {
		$('#vt_tuhon1_price').hide('fast');
	}
	if ($("#vt_tuhon2").is(":checked")) {
		$("#vt_tuhon2_price").show('fast');
	} else {
		$('#vt_tuhon2_price').hide('fast');
	}
}

// 소용돌이 사원 3네임드
function vt_sale_item3_event(e) {
	if ($("#vt_tujang3").is(":checked")) {
		$("#vt_tujang3_price").show('fast');
	} else {
		$('#vt_tujang3_price').hide('fast');
	}
	if ($("#vt_tujang4").is(":checked")) {
		$("#vt_tujang4_price").show('fast');
	} else {
		$('#vt_tujang4_price').hide('fast');
	}
	if ($("#vt_tuji3").is(":checked")) {
		$("#vt_tuji3_price").show('fast');
	} else {
		$('#vt_tuji3_price').hide('fast');
	}
	if ($("#vt_tuji4").is(":checked")) {
		$("#vt_tuji4_price").show('fast');
	} else {
		$('#vt_tuji4_price').hide('fast');
	}
	if ($("#vt_tuhon3").is(":checked")) {
		$("#vt_tuhon3_price").show('fast');
	} else {
		$('#vt_tuhon3_price').hide('fast');
	}
	if ($("#vt_tuhon4").is(":checked")) {
		$("#vt_tuhon4_price").show('fast');
	} else {
		$('#vt_tuhon4_price').hide('fast');
	}
	if ($("#vt_gon_tujang2").is(":checked")) {
		$("#vt_gon_tujang2_price").show('fast');
	} else {
		$('#vt_gon_tujang2_price').hide('fast');
	}
	if ($("#vt_sun_tujang2").is(":checked")) {
		$("#vt_sun_tujang2_price").show('fast');
	} else {
		$('#vt_sun_tujang2_price').hide('fast');
	}
	if ($("#vt_gon_tuji2").is(":checked")) {
		$("#vt_gon_tuji2_price").show('fast');
	} else {
		$('#vt_gon_tuji2_price').hide('fast');
	}
	if ($("#vt_sun_tuji2").is(":checked")) {
		$("#vt_sun_tuji2_price").show('fast');
	} else {
		$('#vt_sun_tuji2_price').hide('fast');
	}
	if ($("#vt_gon_tuhon2").is(":checked")) {
		$("#vt_gon_tuhon2_price").show('fast');
	} else {
		$('#vt_gon_tuhon2_price').hide('fast');
	}
	if ($("#vt_sun_tuhon2").is(":checked")) {
		$("#vt_sun_tuhon2_price").show('fast');
	} else {
		$('#vt_sun_tuhon2_price').hide('fast');
	}
	if ($("#singongsuk").is(":checked")) {
		$("#singongsuk_price").show('fast');
	} else {
		$('#singongsuk_price').hide('fast');
	}
}

// 소용돌이 사원 4네임드
function vt_sale_item4_event(e) {
	if ($("#muksi").is(":checked")) {
		$("#muksi_price").show('fast');
	} else {
		$('#muksi_price').hide('fast');
	}
	if ($("#hukcham").is(":checked")) {
		$("#hukcham_price").show('fast');
	} else {
		$('#hukcham_price').hide('fast');
	}
	if ($("#amgak").is(":checked")) {
		$("#amgak_price").show('fast');
	} else {
		$('#amgak_price').hide('fast');
	}
	if ($("#vt_gang").is(":checked")) {
		$("#vt_gang_price").show('fast');
	} else {
		$('#vt_gang_price').hide('fast');
	}
	
}
	
// 태천왕릉
// 태천왕릉 1네임드
function tw_sale_item1_event(e) {
	if ($("#tw_tujang_ring1").is(":checked")) {
		$("#tw_tujang_ring1_price").show('fast');
	} else {
		$('#tw_tujang_ring1_price').hide('fast');
	}
	if ($("#tw_tujang_ring2").is(":checked")) {
		$("#tw_tujang_ring2_price").show('fast');
	} else {
		$('#tw_tujang_ring2_price').hide('fast');
	}
	if ($("#tw_tuji_ring1").is(":checked")) {
		$("#tw_tuji_ring1_price").show('fast');
	} else {
		$('#tw_tuji_ring1_price').hide('fast');
	}
	if ($("#tw_tuji_ring2").is(":checked")) {
		$("#tw_tuji_ring2_price").show('fast');
	} else {
		$('#tw_tuji_ring2_price').hide('fast');
	}
	if ($("#tw_tuhon_ring1").is(":checked")) {
		$("#tw_tuhon_ring1_price").show('fast');
	} else {
		$('#tw_tuhon_ring1_price').hide('fast');
	}
	if ($("#tw_tuhon_ring2").is(":checked")) {
		$("#tw_tuhon_ring2_price").show('fast');
	} else {
		$('#tw_tuhon_ring2_price').hide('fast');
	}
	
}
//태천왕릉 2네임드

function tw_sale_item2_event(e) {
	if ($("#tw_tujang_earring1").is(":checked")) {
		$("#tw_tujang_earring1_price").show('fast');
	} else {
		$('#tw_tujang_earring1_price').hide('fast');
	}
	if ($("#tw_tujang_earring2").is(":checked")) {
		$("#tw_tujang_earring2_price").show('fast');
	} else {
		$('#tw_tujang_earring2_price').hide('fast');
	}
	if ($("#tw_tuji_earring1").is(":checked")) {
		$("#tw_tuji_earring1_price").show('fast');
	} else {
		$('#tw_tuji_earring1_price').hide('fast');
	}
	if ($("#tw_tuji_earring2").is(":checked")) {
		$("#tw_tuji_earring2_price").show('fast');
	} else {
		$('#tw_tuji_earring2_price').hide('fast');
	}
	if ($("#tw_tuhon_earring1").is(":checked")) {
		$("#tw_tuhon_earring1_price").show('fast');
	} else {
		$('#tw_tuhon_earring1_price').hide('fast');
	}
	if ($("#tw_tuhon_earring2").is(":checked")) {
		$("#tw_tuhon_earring2_price").show('fast');
	} else {
		$('#tw_tuhon_earring2_price').hide('fast');
	}

}
//태천왕릉 3네임드
function tw_sale_item3_event(e) {
	if ($("#tw_tujang_ring3").is(":checked")) {
		$("#tw_tujang_ring3_price").show('fast');
	} else {
		$('#tw_tujang_ring3_price').hide('fast');
	}
	if ($("#tw_tujang_ring4").is(":checked")) {
		$("#tw_tujang_ring4_price").show('fast');
	} else {
		$('#tw_tujang_ring4_price').hide('fast');
	}
	if ($("#tw_tuji_ring3").is(":checked")) {
		$("#tw_tuji_ring3_price").show('fast');
	} else {
		$('#tw_tuji_ring3_price').hide('fast');
	}
	if ($("#tw_tuji_ring4").is(":checked")) {
		$("#tw_tuji_ring4_price").show('fast');
	} else {
		$('#tw_tuji_ring4_price').hide('fast');
	}
	if ($("#tw_tuhon_ring3").is(":checked")) {
		$("#tw_tuhon_ring3_price").show('fast');
	} else {
		$('#tw_tuhon_ring3_price').hide('fast');
	}
	if ($("#tw_tuhon_ring4").is(":checked")) {
		$("#tw_tuhon_ring4_price").show('fast');
	} else {
		$('#tw_tuhon_ring4_price').hide('fast');
	}
	if ($("#tw_tujang_earring3").is(":checked")) {
		$("#tw_tujang_earring3_price").show('fast');
	} else {
		$('#tw_tujang_earring3_price').hide('fast');
	}
	if ($("#tw_tujang_earring4").is(":checked")) {
		$("#tw_tujang_earring4_price").show('fast');
	} else {
		$('#tw_tujang_earring4_price').hide('fast');
	}
	if ($("#tw_tuji_earring3").is(":checked")) {
		$("#tw_tuji_earring3_price").show('fast');
	} else {
		$('#tw_tuji_earring3_price').hide('fast');
	}
	if ($("#tw_tuji_earring4").is(":checked")) {
		$("#tw_tuji_earring4_price").show('fast');
	} else {
		$('#tw_tuji_earring4_price').hide('fast');
	}
	if ($("#tw_tuhon_earring3").is(":checked")) {
		$("#tw_tuhon_earring3_price").show('fast');
	} else {
		$('#tw_tuhon_earring3_price').hide('fast');
	}
	if ($("#tw_tuhon_earring4").is(":checked")) {
		$("#tw_tuhon_earring4_price").show('fast');
	} else {
		$('#tw_tuhon_earring4_price').hide('fast');
	}
	
}
//태천왕릉 4네임드
function tw_sale_item4_event(e) {
	if ($("#siik").is(":checked")) {
		$("#siik_price").show('fast');
	} else {
		$('#siik_price').hide('fast');
	}
	if ($("#nukgol").is(":checked")) {
		$("#nukgol_price").show('fast');
	} else {
		$('#nukgol_price').hide('fast');
	}
	if ($("#gwangbae").is(":checked")) {
		$("#gwangbae_price").show('fast');
	} else {
		$('#gwangbae_price').hide('fast');
	}
	if ($("#tw_gang").is(":checked")) {
		$("#tw_gang_price").show('fast');
	} else {
		$('#tw_gang_price').hide('fast');
	}
}

// 적몽의 비원
// 적몽의 비원 1네임드
function rd_sale_item1_event(e) {
	if ($("#rd_sa_tujang").is(":checked")) {
		$("#rd_sa_tujang_price").show('fast');
	} else {
		$('#rd_sa_tujang_price').hide('fast');
	}
	if ($("#rd_mo_tujang").is(":checked")) {
		$("#rd_mo_tujang_price").show('fast');
	} else {
		$('#rd_mo_tujang_price').hide('fast');
	}
	if ($("#rd_sa_tuji").is(":checked")) {
		$("#rd_sa_tuji_price").show('fast');
	} else {
		$('#rd_sa_tuji_price').hide('fast');
	}
	if ($("#rd_mo_tuji").is(":checked")) {
		$("#rd_mo_tuji_price").show('fast');
	} else {
		$('#rd_mo_tuji_price').hide('fast');
	}
	if ($("#rd_sa_tuhon").is(":checked")) {
		$("#rd_sa_tuhon_price").show('fast');
	} else {
		$('#rd_sa_tuhon_price').hide('fast');
	}
	if ($("#rd_mo_tuhon").is(":checked")) {
		$("#rd_mo_tuhon_price").show('fast');
	} else {
		$('#rd_mo_tuhon_price').hide('fast');
	}
}
//적몽의 비원 2네임드
function rd_sale_item2_event(e) {
	if ($("#rd_tujang1_neck").is(":checked")) {
		$("#rd_tujang1_neck_price").show('fast');
	} else {
		$('#rd_tujang1_neck_price').hide('fast');
	}
	if ($("#rd_tujang2_neck").is(":checked")) {
		$("#rd_tujang2_neck_price").show('fast');
	} else {
		$('#rd_tujang2_neck_price').hide('fast');
	}
	if ($("#rd_tuji1_neck").is(":checked")) {
		$("#rd_tuji1_neck_price").show('fast');
	} else {
		$('#rd_tuji1_neck_price').hide('fast');
	}
	if ($("#rd_tuji2_neck").is(":checked")) {
		$("#rd_tuji2_neck_price").show('fast');
	} else {
		$('#rd_tuji2_neck_price').hide('fast');
	}
	if ($("#rd_tuhon1_neck").is(":checked")) {
		$("#rd_tuhon1_neck_price").show('fast');
	} else {
		$('#rd_tuhon1_neck_price').hide('fast');
	}
	if ($("#rd_tuhon2_neck").is(":checked")) {
		$("#rd_tuhon2_neck_price").show('fast');
	} else {
		$('#rd_tuhon2_neck_price').hide('fast');
	}
}
//적몽의 비원 3네임드
function rd_sale_item3_event(e) {
	if ($("#poyup").is(":checked")) {
		$("#poyup_price").show('fast');
	} else {
		$('#poyup_price').hide('fast');
	}
	if ($("#jamo").is(":checked")) {
		$("#jamo_price").show('fast');
	} else {
		$('#jamo_price').hide('fast');
	}
	if ($("#ipmak").is(":checked")) {
		$("#ipmak_price").show('fast');
	} else {
		$('#ipmak_price').hide('fast');
	}
	if ($("#rd_gang").is(":checked")) {
		$("#rd_gang_price").show('fast');
	} else {
		$('#rd_gang_price').hide('fast');
	}
}
