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
     		            		alert(JSON.stringify(data));
     		            		alert(data.result);
     		            		//이해 안되는 부분. 왜 false가 넘어오는지?
     		            		if($.trim(data.result)  ==  "false") {
		     		            		alert("사용할 수 있는 팀명입니다.");
		     		            		$('#team_name').attr("readonly", true);		
		     		        			$("#team_name").attr('style',  'color:gray');
		     		        			
		     		        			$("#btn_submit").click(e=>{
		     		        			
		     		        				var go_date = $('#go_date').val();
		     		        				var go_time = $('#go_time').val();
		     		        				
		     		        				if($.trim(go_date) == "") {
		     		        					alert("출발 날짜를 적어주세요.");
		     		        				} else if ($.trim(go_time) == "") {
		     		        					alert("출발 시간을 적어주세요.");
		     		        				} else {
		     		        				var form = document.getElementById("sale_register");
		     		        				form.submit();
		     		        				}
		     		        	
		     		        			
		     		        			});
		     		        			
     		            		} else {
     		            			alert("이미 존재하는 팀명입니다.");
     		            		}			

     		            },
     		           error: function(data, status) {
     		             
     		        	  alert("오류 발생 !!");
     		        	  alert(data);
     		        	  alert(status);
     		            }
     			  
     			   });
	}
});
		        	
$("#btn_submit").click(e=>{
	if ($.trim($('#team_name').val()) == "") {
		alert("먼저 팀명 중복체크를 해주세요");
			
	} 
});


// $(document).ready(function () {/// 페이지 오픈시 검은마천루 radio 자동선택
$('input[type="radio"]').click(function() {

	if ($(this).attr("value") == "검은 마천루") {
		$('.info').hide();
		$('.info2').hide();

		$(".named2").hide();
		$(".named3").hide();
		$(".named4").hide();
		$(".named").show('fast');

		$(".sale-item2").hide();
		$(".sale-item3").hide();
		$(".sale-item4").hide();
		$(".sale-item").show('fast');

		$('.btn_submit').show('slow');

	} else if ($(this).attr("value") == "소용돌이 사원") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named3").hide();
		$(".named4").hide();
		$(".named2").show('fast');

		$(".sale-item").hide();
		$(".sale-item3").hide();
		$(".sale-item4").hide();
		$(".sale-item2").show('fast');

		$('.btn_submit').show('slow');

	} else if ($(this).attr("value") == "태천왕릉") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named2").hide();
		$(".named4").hide();
		$(".named3").show('fast');

		$(".sale-item").hide();
		$(".sale-item2").hide();
		$(".sale-item4").hide();
		$(".sale-item3").show('fast');

		$('.btn_submit').show('slow');
	}

	else if ($(this).attr("value") == "적몽의 비원") {
		$('.info').hide();
		$('.info2').hide();

		$(".named").hide();
		$(".named2").hide();
		$(".named3").hide();
		$(".named4").show('fast');

		$(".sale-item").hide();
		$(".sale-item2").hide();
		$(".sale-item3").hide();
		$(".sale-item4").show('fast');

		$('.btn_submit').show('slow');
	}

	else {
		$('.info2').show('fast');
	}

});
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
$(document).ready(function() {
	
	// 마천루
	// 마천루 1네임드
	$('#bs_tujang_ring1').change(function() {
		if ($("#bs_tujang_ring1").is(":checked")) {
			$("#bs_tujang_ring1_price").show('fast');
		} else {
			$('#bs_tujang_ring1_price').hide('fast');
		}
	});

	$('#bs_tujang_ring2').change(function() {
		if ($("#bs_tujang_ring2").is(":checked")) {
			$("#bs_tujang_ring2_price").show('fast');
		} else {
			$('#bs_tujang_ring2_price').hide('fast');
		}
	});
	
	$('#bs_tuji_ring1').change(function() {
		if ($("#bs_tuji_ring1").is(":checked")) {
			$("#bs_tuji_ring1_price").show('fast');
		} else {
			$('#bs_tuji_ring1_price').hide('fast');
		}
	});
	
	$('#bs_tuji_ring2').change(function() {
		if ($("#bs_tuji_ring2").is(":checked")) {
			$("#bs_tuji_ring2_price").show('fast');
		} else {
			$('#bs_tuji_ring2_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_ring1').change(function() {
		if ($("#bs_tuhon_ring1").is(":checked")) {
			$("#bs_tuhon_ring1_price").show('fast');
		} else {
			$('#bs_tuhon_ring1_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_ring2').change(function() {
		if ($("#bs_tuhon_ring2").is(":checked")) {
			$("#bs_tuhon_ring2_price").show('fast');
		} else {
			$('#bs_tuhon_ring2_price').hide('fast');
		}
	});
	
	// 마천루 2네임드
	$('#bs_tujang_earring1').change(function() {
		if ($("#bs_tujang_earring1").is(":checked")) {
			$("#bs_tujang_earring1_price").show('fast');
		} else {
			$('#bs_tujang_earring1_price').hide('fast');
		}
	});
	
	$('#bs_tujang_earring2').change(function() {
		if ($("#bs_tujang_earring2").is(":checked")) {
			$("#bs_tujang_earring2_price").show('fast');
		} else {
			$('#bs_tujang_earring2_price').hide('fast');
		}
	});
	
	$('#bs_tuji_earring1').change(function() {
		if ($("#bs_tuji_earring1").is(":checked")) {
			$("#bs_tuji_earring1_price").show('fast');
		} else {
			$('#bs_tuji_earring1_price').hide('fast');
		}
	});
	
	$('#bs_tuji_earring2').change(function() {
		if ($("#bs_tuji_earring2").is(":checked")) {
			$("#bs_tuji_earring2_price").show('fast');
		} else {
			$('#bs_tuji_earring2_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_earring1').change(function() {
		if ($("#bs_tuhon_earring1").is(":checked")) {
			$("#bs_tuhon_earring1_price").show('fast');
		} else {
			$('#bs_tuhon_earring1_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_earring2').change(function() {
		if ($("#bs_tuhon_earring2").is(":checked")) {
			$("#bs_tuhon_earring2_price").show('fast');
		} else {
			$('#bs_tuhon_earring2_price').hide('fast');
		}
	});
	
	// 마천루 3네임드
	$('#bs_tujang_ring3').change(function() {
		if ($("#bs_tujang_ring3").is(":checked")) {
			$("#bs_tujang_ring3_price").show('fast');
		} else {
			$('#bs_tujang_ring3_price').hide('fast');
		}
	});
	
	$('#bs_tujang_ring4').change(function() {
		if ($("#bs_tujang_ring4").is(":checked")) {
			$("#bs_tujang_ring4_price").show('fast');
		} else {
			$('#bs_tujang_ring4_price').hide('fast');
		}
	});
	
	$('#bs_tuji_ring3').change(function() {
		if ($("#bs_tuji_ring3").is(":checked")) {
			$("#bs_tuji_ring3_price").show('fast');
		} else {
			$('#bs_tuji_ring3_price').hide('fast');
		}
	});
	
	$('#bs_tuji_ring4').change(function() {
		if ($("#bs_tuji_ring4").is(":checked")) {
			$("#bs_tuji_ring4_price").show('fast');
		} else {
			$('#bs_tuji_ring4_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_ring3').change(function() {
		if ($("#bs_tuhon_ring3").is(":checked")) {
			$("#bs_tuhon_ring3_price").show('fast');
		} else {
			$('#bs_tuhon_ring3_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_ring4').change(function() {
		if ($("#bs_tuhon_ring4").is(":checked")) {
			$("#bs_tuhon_ring4_price").show('fast');
		} else {
			$('#bs_tuhon_ring4_price').hide('fast');
		}
	});
	
	$('#bs_tujang_earring3').change(function() {
		if ($("#bs_tujang_earring3").is(":checked")) {
			$("#bs_tujang_earring3_price").show('fast');
		} else {
			$('#bs_tujang_earring3_price').hide('fast');
		}
	});
	
	$('#bs_tujang_earring4').change(function() {
		if ($("#bs_tujang_earring4").is(":checked")) {
			$("#bs_tujang_earring4_price").show('fast');
		} else {
			$('#bs_tujang_earring4_price').hide('fast');
		}
	});
	
	$('#bs_tuji_earring3').change(function() {
		if ($("#bs_tuji_earring3").is(":checked")) {
			$("#bs_tuji_earring3_price").show('fast');
		} else {
			$('#bs_tuji_earring3_price').hide('fast');
		}
	});
	
	$('#bs_tuji_earring4').change(function() {
		if ($("#bs_tuji_earring4").is(":checked")) {
			$("#bs_tuji_earring4_price").show('fast');
		} else {
			$('#bs_tuji_earring4_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_earring3').change(function() {
		if ($("#bs_tuhon_earring3").is(":checked")) {
			$("#bs_tuhon_earring3_price").show('fast');
		} else {
			$('#bs_tuhon_earring3_price').hide('fast');
		}
	});
	
	$('#bs_tuhon_earring4').change(function() {
		if ($("#bs_tuhon_earring4").is(":checked")) {
			$("#bs_tuhon_earring4_price").show('fast');
		} else {
			$('#bs_tuhon_earring4_price').hide('fast');
		}
	});
	
	// 마천루 4네임드
	$('#hukrin').change(function() {
		if ($("#hukrin").is(":checked")) {
			$("#hukrin_price").show('fast');
		} else {
			$('#hukrin_price').hide('fast');
		}
	});
	
	$('#gyukgol').change(function() {
		if ($("#gyukgol").is(":checked")) {
			$("#gyukgol_price").show('fast');
		} else {
			$('#gyukgol_price').hide('fast');
		}
	});
	
	$('#ginki').change(function() {
		if ($("#ginki").is(":checked")) {
			$("#ginki_price").show('fast');
		} else {
			$('#ginki_price').hide('fast');
		}
	});
	
	$('#bs_gang').change(function() {
		if ($("#bs_gang").is(":checked")) {
			$("#bs_gang_price").show('fast');
		} else {
			$('#bs_gang_price').hide('fast');
		}
	});
	
	
	
	
	// 소용돌이 사원
	// 소용돌이 사원 1네임드
	$('#vt_gon_tujang').change(function() {
		if ($("#vt_gon_tujang").is(":checked")) {
			$("#vt_gon_tujang_price").show('fast');
		} else {
			$('#vt_gon_tujang_price').hide('fast');
		}
	});

	$('#vt_sun_tujang').change(function() {
		if ($("#vt_sun_tujang").is(":checked")) {
			$("#vt_sun_tujang_price").show('fast');
		} else {
			$('#vt_sun_tujang_price').hide('fast');
		}
	});
	
	$('#vt_gon_tuji').change(function() {
		if ($("#vt_gon_tuji").is(":checked")) {
			$("#vt_gon_tuji_price").show('fast');
		} else {
			$('#vt_gon_tuji_price').hide('fast');
		}
	});
	
	$('#vt_sun_tuji').change(function() {
		if ($("#vt_sun_tuji").is(":checked")) {
			$("#vt_sun_tuji_price").show('fast');
		} else {
			$('#vt_sun_tuji_price').hide('fast');
		}
	});
	
	$('#vt_gon_tuhon').change(function() {
		if ($("#vt_gon_tuhon").is(":checked")) {
			$("#vt_gon_tuhon_price").show('fast');
		} else {
			$('#vt_gon_tuhon_price').hide('fast');
		}
	});
	
	$('#vt_sun_tuhon').change(function() {
		if ($("#vt_sun_tuhon").is(":checked")) {
			$("#vt_sun_tuhon_price").show('fast');
		} else {
			$('#vt_sun_tuhon_price').hide('fast');
		}
	});
	
	// 소용돌이 사원 2네임드
	$('#vt_tujang1').change(function() {
		if ($("#vt_tujang1").is(":checked")) {
			$("#vt_tujang1_price").show('fast');
		} else {
			$('#vt_tujang1_price').hide('fast');
		}
	});
	
	$('#vt_tujang2').change(function() {
		if ($("#vt_tujang2").is(":checked")) {
			$("#vt_tujang2_price").show('fast');
		} else {
			$('#vt_tujang2_price').hide('fast');
		}
	});
	
	$('#vt_tuji1').change(function() {
		if ($("#vt_tuji1").is(":checked")) {
			$("#vt_tuji1_price").show('fast');
		} else {
			$('#vt_tuji1_price').hide('fast');
		}
	});
	
	$('#vt_tuji2').change(function() {
		if ($("#vt_tuji2").is(":checked")) {
			$("#vt_tuji2_price").show('fast');
		} else {
			$('#vt_tuji2_price').hide('fast');
		}
	});
	
	$('#vt_tuhon1').change(function() {
		if ($("#vt_tuhon1").is(":checked")) {
			$("#vt_tuhon1_price").show('fast');
		} else {
			$('#vt_tuhon1_price').hide('fast');
		}
	});
	
	$('#vt_tuhon2').change(function() {
		if ($("#vt_tuhon2").is(":checked")) {
			$("#vt_tuhon2_price").show('fast');
		} else {
			$('#vt_tuhon2_price').hide('fast');
		}
	});
	
	// 소용돌이 사원 3네임드
	$('#vt_tujang3').change(function() {
		if ($("#vt_tujang3").is(":checked")) {
			$("#vt_tujang3_price").show('fast');
		} else {
			$('#vt_tujang3_price').hide('fast');
		}
	});
	
	$('#vt_tujang4').change(function() {
		if ($("#vt_tujang4").is(":checked")) {
			$("#vt_tujang4_price").show('fast');
		} else {
			$('#vt_tujang4_price').hide('fast');
		}
	});
	
	$('#vt_tuji3').change(function() {
		if ($("#vt_tuji3").is(":checked")) {
			$("#vt_tuji3_price").show('fast');
		} else {
			$('#vt_tuji3_price').hide('fast');
		}
	});
	
	$('#vt_tuji4').change(function() {
		if ($("#vt_tuji4").is(":checked")) {
			$("#vt_tuji4_price").show('fast');
		} else {
			$('#vt_tuji4_price').hide('fast');
		}
	});
	
	$('#vt_tuhon3').change(function() {
		if ($("#vt_tuhon3").is(":checked")) {
			$("#vt_tuhon3_price").show('fast');
		} else {
			$('#vt_tuhon3_price').hide('fast');
		}
	});
	
	$('#vt_tuhon4').change(function() {
		if ($("#vt_tuhon4").is(":checked")) {
			$("#vt_tuhon4_price").show('fast');
		} else {
			$('#vt_tuhon4_price').hide('fast');
		}
	});
	
	$('#vt_gon_tujang2').change(function() {
		if ($("#vt_gon_tujang2").is(":checked")) {
			$("#vt_gon_tujang2_price").show('fast');
		} else {
			$('#vt_gon_tujang2_price').hide('fast');
		}
	});
	
	$('#vt_sun_tujang2').change(function() {
		if ($("#vt_sun_tujang2").is(":checked")) {
			$("#vt_sun_tujang2_price").show('fast');
		} else {
			$('#vt_sun_tujang2_price').hide('fast');
		}
	});
	
	$('#vt_gon_tuji2').change(function() {
		if ($("#vt_gon_tuji2").is(":checked")) {
			$("#vt_gon_tuji2_price").show('fast');
		} else {
			$('#vt_gon_tuji2_price').hide('fast');
		}
	});
	
	$('#vt_sun_tuji2').change(function() {
		if ($("#vt_sun_tuji2").is(":checked")) {
			$("#vt_sun_tuji2_price").show('fast');
		} else {
			$('#vt_sun_tuji2_price').hide('fast');
		}
	});
	
	$('#vt_gon_tuhon2').change(function() {
		if ($("#vt_gon_tuhon2").is(":checked")) {
			$("#vt_gon_tuhon2_price").show('fast');
		} else {
			$('#vt_gon_tuhon2_price').hide('fast');
		}
	});
	
	$('#vt_sun_tuhon2').change(function() {
		if ($("#vt_sun_tuhon2").is(":checked")) {
			$("#vt_sun_tuhon2_price").show('fast');
		} else {
			$('#vt_sun_tuhon2_price').hide('fast');
		}
	});
	
	$('#singongsuk').change(function() {
		if ($("#singongsuk").is(":checked")) {
			$("#singongsuk_price").show('fast');
		} else {
			$('#singongsuk_price').hide('fast');
		}
	});

	// 소용돌이 사원 4네임드
	$('#muksi').change(function() {
		if ($("#muksi").is(":checked")) {
			$("#muksi_price").show('fast');
		} else {
			$('#muksi_price').hide('fast');
		}
	});
	
	$('#hukcham').change(function() {
		if ($("#hukcham").is(":checked")) {
			$("#hukcham_price").show('fast');
		} else {
			$('#hukcham_price').hide('fast');
		}
	});
	
	$('#amgak').change(function() {
		if ($("#amgak").is(":checked")) {
			$("#amgak_price").show('fast');
		} else {
			$('#amgak_price').hide('fast');
		}
	});
	$('#vt_gang').change(function() {
		if ($("#vt_gang").is(":checked")) {
			$("#vt_gang_price").show('fast');
		} else {
			$('#vt_gang_price').hide('fast');
		}
	});
	
	
	
	// 태천왕릉
	// 태천왕릉 1네임드
	$('#tw_tujang_ring1').change(function() {
		if ($("#tw_tujang_ring1").is(":checked")) {
			$("#tw_tujang_ring1_price").show('fast');
		} else {
			$('#tw_tujang_ring1_price').hide('fast');
		}
	});
	
	$('#tw_tujang_ring2').change(function() {
		if ($("#tw_tujang_ring2").is(":checked")) {
			$("#tw_tujang_ring2_price").show('fast');
		} else {
			$('#tw_tujang_ring2_price').hide('fast');
		}
	});
	
	$('#tw_tuji_ring1').change(function() {
		if ($("#tw_tuji_ring1").is(":checked")) {
			$("#tw_tuji_ring1_price").show('fast');
		} else {
			$('#tw_tuji_ring1_price').hide('fast');
		}
	});
	
	$('#tw_tuji_ring2').change(function() {
		if ($("#tw_tuji_ring2").is(":checked")) {
			$("#tw_tuji_ring2_price").show('fast');
		} else {
			$('#tw_tuji_ring2_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_ring1').change(function() {
		if ($("#tw_tuhon_ring1").is(":checked")) {
			$("#tw_tuhon_ring1_price").show('fast');
		} else {
			$('#tw_tuhon_ring1_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_ring2').change(function() {
		if ($("#tw_tuhon_ring2").is(":checked")) {
			$("#tw_tuhon_ring2_price").show('fast');
		} else {
			$('#tw_tuhon_ring2_price').hide('fast');
		}
	});
	
	// 태천왕릉 2네임드
	$('#tw_tujang_earring1').change(function() {
		if ($("#tw_tujang_earring1").is(":checked")) {
			$("#tw_tujang_earring1_price").show('fast');
		} else {
			$('#tw_tujang_earring1_price').hide('fast');
		}
	});

	$('#tw_tujang_earring2').change(function() {
		if ($("#tw_tujang_earring2").is(":checked")) {
			$("#tw_tujang_earring2_price").show('fast');
		} else {
			$('#tw_tujang_earring2_price').hide('fast');
		}
	});
	
	$('#tw_tuji_earring1').change(function() {
		if ($("#tw_tuji_earring1").is(":checked")) {
			$("#tw_tuji_earring1_price").show('fast');
		} else {
			$('#tw_tuji_earring1_price').hide('fast');
		}
	});
	
	$('#tw_tuji_earring2').change(function() {
		if ($("#tw_tuji_earring2").is(":checked")) {
			$("#tw_tuji_earring2_price").show('fast');
		} else {
			$('#tw_tuji_earring2_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_earring1').change(function() {
		if ($("#tw_tuhon_earring1").is(":checked")) {
			$("#tw_tuhon_earring1_price").show('fast');
		} else {
			$('#tw_tuhon_earring1_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_earring2').change(function() {
		if ($("#tw_tuhon_earring2").is(":checked")) {
			$("#tw_tuhon_earring2_price").show('fast');
		} else {
			$('#tw_tuhon_earring2_price').hide('fast');
		}
	});
	
	// 태천왕릉 3네임드
	$('#tw_tujang_ring3').change(function() {
		if ($("#tw_tujang_ring3").is(":checked")) {
			$("#tw_tujang_ring3_price").show('fast');
		} else {
			$('#tw_tujang_ring3_price').hide('fast');
		}
	});
	
	$('#tw_tujang_ring4').change(function() {
		if ($("#tw_tujang_ring4").is(":checked")) {
			$("#tw_tujang_ring4_price").show('fast');
		} else {
			$('#tw_tujang_ring4_price').hide('fast');
		}
	});
	
	$('#tw_tuji_ring3').change(function() {
		if ($("#tw_tuji_ring3").is(":checked")) {
			$("#tw_tuji_ring3_price").show('fast');
		} else {
			$('#tw_tuji_ring3_price').hide('fast');
		}
	});
	
	$('#tw_tuji_ring4').change(function() {
		if ($("#tw_tuji_ring4").is(":checked")) {
			$("#tw_tuji_ring4_price").show('fast');
		} else {
			$('#tw_tuji_ring4_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_ring3').change(function() {
		if ($("#tw_tuhon_ring3").is(":checked")) {
			$("#tw_tuhon_ring3_price").show('fast');
		} else {
			$('#tw_tuhon_ring3_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_ring4').change(function() {
		if ($("#tw_tuhon_ring4").is(":checked")) {
			$("#tw_tuhon_ring4_price").show('fast');
		} else {
			$('#tw_tuhon_ring4_price').hide('fast');
		}
	});
	
	$('#tw_tujang_earring3').change(function() {
		if ($("#tw_tujang_earring3").is(":checked")) {
			$("#tw_tujang_earring3_price").show('fast');
		} else {
			$('#tw_tujang_earring3_price').hide('fast');
		}
	});
	
	$('#tw_tujang_earring4').change(function() {
		if ($("#tw_tujang_earring4").is(":checked")) {
			$("#tw_tujang_earring4_price").show('fast');
		} else {
			$('#tw_tujang_earring4_price').hide('fast');
		}
	});
	
	$('#tw_tuji_earring3').change(function() {
		if ($("#tw_tuji_earring3").is(":checked")) {
			$("#tw_tuji_earring3_price").show('fast');
		} else {
			$('#tw_tuji_earring3_price').hide('fast');
		}
	});
	
	$('#tw_tuji_earring4').change(function() {
		if ($("#tw_tuji_earring4").is(":checked")) {
			$("#tw_tuji_earring4_price").show('fast');
		} else {
			$('#tw_tuji_earring4_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_earring3').change(function() {
		if ($("#tw_tuhon_earring3").is(":checked")) {
			$("#tw_tuhon_earring3_price").show('fast');
		} else {
			$('#tw_tuhon_earring3_price').hide('fast');
		}
	});
	
	$('#tw_tuhon_earring4').change(function() {
		if ($("#tw_tuhon_earring4").is(":checked")) {
			$("#tw_tuhon_earring4_price").show('fast');
		} else {
			$('#tw_tuhon_earring4_price').hide('fast');
		}
	});
	
	// 태천왕릉 4네임드
	$('#siik').change(function() {
		if ($("#siik").is(":checked")) {
			$("#siik_price").show('fast');
		} else {
			$('#siik_price').hide('fast');
		}
	});
	
	$('#nukgol').change(function() {
		if ($("#nukgol").is(":checked")) {
			$("#nukgol_price").show('fast');
		} else {
			$('#nukgol_price').hide('fast');
		}
	});
	
	$('#gwangbae').change(function() {
		if ($("#gwangbae").is(":checked")) {
			$("#gwangbae_price").show('fast');
		} else {
			$('#gwangbae_price').hide('fast');
		}
	});
	
	$('#tw_gang').change(function() {
		if ($("#tw_gang").is(":checked")) {
			$("#tw_gang_price").show('fast');
		} else {
			$('#tw_gang_price').hide('fast');
		}
	});
	
	// 적몽의 비원 1네임드
	$('#rd_sa_tujang').change(function() {
		if ($("#rd_sa_tujang").is(":checked")) {
			$("#rd_sa_tujang_price").show('fast');
		} else {
			$('#rd_sa_tujang_price').hide('fast');
		}
	});
	
	$('#rd_mo_tujang').change(function() {
		if ($("#rd_mo_tujang").is(":checked")) {
			$("#rd_mo_tujang_price").show('fast');
		} else {
			$('#rd_mo_tujang_price').hide('fast');
		}
	});
	
	$('#rd_sa_tuji').change(function() {
		if ($("#rd_sa_tuji").is(":checked")) {
			$("#rd_sa_tuji_price").show('fast');
		} else {
			$('#rd_sa_tuji_price').hide('fast');
		}
	});
	
	$('#rd_mo_tuji').change(function() {
		if ($("#rd_mo_tuji").is(":checked")) {
			$("#rd_mo_tuji_price").show('fast');
		} else {
			$('#rd_mo_tuji_price').hide('fast');
		}
	});
	
	$('#rd_sa_tuhon').change(function() {
		if ($("#rd_sa_tuhon").is(":checked")) {
			$("#rd_sa_tuhon_price").show('fast');
		} else {
			$('#rd_sa_tuhon_price').hide('fast');
		}
	});
	
	$('#rd_mo_tuhon').change(function() {
		if ($("#rd_mo_tuhon").is(":checked")) {
			$("#rd_mo_tuhon_price").show('fast');
		} else {
			$('#rd_mo_tuhon_price').hide('fast');
		}
	});
	
	// 적몽의 비원 2네임드
	$('#rd_tujang1_neck').change(function() {
		if ($("#rd_tujang1_neck").is(":checked")) {
			$("#rd_tujang1_neck_price").show('fast');
		} else {
			$('#rd_tujang1_neck_price').hide('fast');
		}
	});
	
	$('#rd_tujang2_neck').change(function() {
		if ($("#rd_tujang2_neck").is(":checked")) {
			$("#rd_tujang2_neck_price").show('fast');
		} else {
			$('#rd_tujang2_neck_price').hide('fast');
		}
	});
	
	$('#rd_tuji1_neck').change(function() {
		if ($("#rd_tuji1_neck").is(":checked")) {
			$("#rd_tuji1_neck_price").show('fast');
		} else {
			$('#rd_tuji1_neck_price').hide('fast');
		}
	});
	
	$('#rd_tuji2_neck').change(function() {
		if ($("#rd_tuji2_neck").is(":checked")) {
			$("#rd_tuji2_neck_price").show('fast');
		} else {
			$('#rd_tuji2_neck_price').hide('fast');
		}
	});
	
	$('#rd_tuhon1_neck').change(function() {
		if ($("#rd_tuhon1_neck").is(":checked")) {
			$("#rd_tuhon1_neck_price").show('fast');
		} else {
			$('#rd_tuhon1_neck_price').hide('fast');
		}
	});
	
	$('#rd_tuhon2_neck').change(function() {
		if ($("#rd_tuhon2_neck").is(":checked")) {
			$("#rd_tuhon2_neck_price").show('fast');
		} else {
			$('#rd_tuhon2_neck_price').hide('fast');
		}
	});

	// 적몽의 비원 3네임드
	$('#poyup').change(function() {
		if ($("#poyup").is(":checked")) {
			$("#poyup_price").show('fast');
		} else {
			$('#poyup_price').hide('fast');
		}
	});
	
	$('#jamo').change(function() {
		if ($("#jamo").is(":checked")) {
			$("#jamo_price").show('fast');
		} else {
			$('#jamo_price').hide('fast');
		}
	});
	
	$('#ipmak').change(function() {
		if ($("#ipmak").is(":checked")) {
			$("#ipmak_price").show('fast');
		} else {
			$('#ipmak_price').hide('fast');
		}
	});
	
	$('#rd_gang').change(function() {
		if ($("#rd_gang").is(":checked")) {
			$("#rd_gang_price").show('fast');
		} else {
			$('#rd_gang_price').hide('fast');
		}
	});
	
});