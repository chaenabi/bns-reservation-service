//$(document).ready(function () {/// 페이지 오픈시 검은마천루 radio 자동선택
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

// $('#black').trigger('click'); }); // 페이지 오픈시 검은마천루 radio 자동선택


//체크박스 금액 표시기
$(document).ready(function() {
	
	//마천루
	$('#ck_bs1').change(function() {
		if ($("#ck_bs1").is(":checked")) {
			$("#bs1").show('fast');
		} else {
			$('#bs1').hide('fast');
		}
	});

	$('#ck_bs2').change(function() {
		if ($("#ck_bs2").is(":checked")) {
			$("#bs2").show('fast');
		} else {
			$('#bs2').hide('fast');
		}
	});
	
	$('#ck_bs3').change(function() {
		if ($("#ck_bs3").is(":checked")) {
			$("#bs3").show('fast');
		} else {
			$('#bs3').hide('fast');
		}
	});
	
	$('#ck_bs4').change(function() {
		if ($("#ck_bs4").is(":checked")) {
			$("#bs4").show('fast');
		} else {
			$('#bs4').hide('fast');
		}
	});
	
	$('#ck_bs5').change(function() {
		if ($("#ck_bs5").is(":checked")) {
			$("#bs5").show('fast');
		} else {
			$('#bs5').hide('fast');
		}
	});
	
	$('#ck_bs6').change(function() {
		if ($("#ck_bs6").is(":checked")) {
			$("#bs6").show('fast');
		} else {
			$('#bs6').hide('fast');
		}
	});
	
	$('#ck_bs7').change(function() {
		if ($("#ck_bs7").is(":checked")) {
			$("#bs7").show('fast');
		} else {
			$('#bs7').hide('fast');
		}
	});
	
	$('#ck_bs7').change(function() {
		if ($("#ck_bs7").is(":checked")) {
			$("#bs7").show('fast');
		} else {
			$('#bs7').hide('fast');
		}
	});
	
	$('#ck_bs8').change(function() {
		if ($("#ck_bs8").is(":checked")) {
			$("#bs8").show('fast');
		} else {
			$('#bs8').hide('fast');
		}
	});
	
	$('#ck_bs9').change(function() {
		if ($("#ck_bs9").is(":checked")) {
			$("#bs9").show('fast');
		} else {
			$('#bs9').hide('fast');
		}
	});
	
	$('#ck_bs10').change(function() {
		if ($("#ck_bs10").is(":checked")) {
			$("#bs10").show('fast');
		} else {
			$('#bs10').hide('fast');
		}
	});
	
	$('#ck_bs11').change(function() {
		if ($("#ck_bs11").is(":checked")) {
			$("#bs11").show('fast');
		} else {
			$('#bs11').hide('fast');
		}
	});
	
	$('#ck_bs12').change(function() {
		if ($("#ck_bs12").is(":checked")) {
			$("#bs12").show('fast');
		} else {
			$('#bs12').hide('fast');
		}
	});
	
	$('#ck_bs13').change(function() {
		if ($("#ck_bs13").is(":checked")) {
			$("#bs13").show('fast');
		} else {
			$('#bs13').hide('fast');
		}
	});
	
	$('#ck_bs14').change(function() {
		if ($("#ck_bs14").is(":checked")) {
			$("#bs14").show('fast');
		} else {
			$('#bs14').hide('fast');
		}
	});
	
	$('#ck_bs15').change(function() {
		if ($("#ck_bs15").is(":checked")) {
			$("#bs15").show('fast');
		} else {
			$('#bs15').hide('fast');
		}
	});
	
	$('#ck_bs16').change(function() {
		if ($("#ck_bs16").is(":checked")) {
			$("#bs16").show('fast');
		} else {
			$('#bs16').hide('fast');
		}
	});
	
	$('#ck_bs17').change(function() {
		if ($("#ck_bs17").is(":checked")) {
			$("#bs17").show('fast');
		} else {
			$('#bs17').hide('fast');
		}
	});
	
	$('#ck_bs18').change(function() {
		if ($("#ck_bs18").is(":checked")) {
			$("#bs18").show('fast');
		} else {
			$('#bs18').hide('fast');
		}
	});
	
	$('#ck_bs19').change(function() {
		if ($("#ck_bs19").is(":checked")) {
			$("#bs19").show('fast');
		} else {
			$('#bs19').hide('fast');
		}
	});
	
	$('#ck_bs20').change(function() {
		if ($("#ck_bs20").is(":checked")) {
			$("#bs20").show('fast');
		} else {
			$('#bs20').hide('fast');
		}
	});
	
	$('#ck_bs21').change(function() {
		if ($("#ck_bs21").is(":checked")) {
			$("#bs21").show('fast');
		} else {
			$('#bs21').hide('fast');
		}
	});
	
	$('#ck_bs22').change(function() {
		if ($("#ck_bs22").is(":checked")) {
			$("#bs22").show('fast');
		} else {
			$('#bs22').hide('fast');
		}
	});
	
	$('#ck_bs23').change(function() {
		if ($("#ck_bs23").is(":checked")) {
			$("#bs23").show('fast');
		} else {
			$('#bs23').hide('fast');
		}
	});
	
	$('#ck_bs24').change(function() {
		if ($("#ck_bs24").is(":checked")) {
			$("#bs24").show('fast');
		} else {
			$('#bs24').hide('fast');
		}
	});
	
	//
	$('#ck_bs_gyukgol').change(function() {
		if ($("#ck_bs_gyukgol").is(":checked")) {
			$("#bs_gyukgol").show('fast');
		} else {
			$('#bs_gyukgol').hide('fast');
		}
	});
	
	$('#ck_bs_ginki').change(function() {
		if ($("#ck_bs_ginki").is(":checked")) {
			$("#bs_ginki").show('fast');
		} else {
			$('#bs_ginki').hide('fast');
		}
	});
	
	$('#ck_bs_hukrin').change(function() {
		if ($("#ck_bs_hukrin").is(":checked")) {
			$("#bs_hukrin").show('fast');
		} else {
			$('#bs_hukrin').hide('fast');
		}
	});
	
	$('#ck_bs_bsgang').change(function() {
		if ($("#ck_bs_bsgang").is(":checked")) {
			$("#bs_bsgang").show('fast');
		} else {
			$('#bs_bsgang').hide('fast');
		}
	});
	
	
	
	
	//소용돌이 사원
	$('#ck_vt1').change(function() {
		if ($("#ck_vt1").is(":checked")) {
			$("#vt1").show('fast');
		} else {
			$('#vt1').hide('fast');
		}
	});

	$('#ck_vt2').change(function() {
		if ($("#ck_vt2").is(":checked")) {
			$("#vt2").show('fast');
		} else {
			$('#vt2').hide('fast');
		}
	});
	
	$('#ck_vt3').change(function() {
		if ($("#ck_vt3").is(":checked")) {
			$("#vt3").show('fast');
		} else {
			$('#vt3').hide('fast');
		}
	});
	
	$('#ck_vt4').change(function() {
		if ($("#ck_vt4").is(":checked")) {
			$("#vt4").show('fast');
		} else {
			$('#vt4').hide('fast');
		}
	});
	
	$('#ck_vt5').change(function() {
		if ($("#ck_vt5").is(":checked")) {
			$("#vt5").show('fast');
		} else {
			$('#vt5').hide('fast');
		}
	});
	
	$('#ck_vt6').change(function() {
		if ($("#ck_vt6").is(":checked")) {
			$("#vt6").show('fast');
		} else {
			$('#vt6').hide('fast');
		}
	});
	
	$('#ck_vt7').change(function() {
		if ($("#ck_vt7").is(":checked")) {
			$("#vt7").show('fast');
		} else {
			$('#vt7').hide('fast');
		}
	});
	
	$('#ck_vt7').change(function() {
		if ($("#ck_vt7").is(":checked")) {
			$("#vt7").show('fast');
		} else {
			$('#vt7').hide('fast');
		}
	});
	
	$('#ck_vt8').change(function() {
		if ($("#ck_vt8").is(":checked")) {
			$("#vt8").show('fast');
		} else {
			$('#vt8').hide('fast');
		}
	});
	
	$('#ck_vt9').change(function() {
		if ($("#ck_vt9").is(":checked")) {
			$("#vt9").show('fast');
		} else {
			$('#vt9').hide('fast');
		}
	});
	
	$('#ck_vt10').change(function() {
		if ($("#ck_vt10").is(":checked")) {
			$("#vt10").show('fast');
		} else {
			$('#vt10').hide('fast');
		}
	});
	
	$('#ck_vt11').change(function() {
		if ($("#ck_vt11").is(":checked")) {
			$("#vt11").show('fast');
		} else {
			$('#vt11').hide('fast');
		}
	});
	
	$('#ck_vt12').change(function() {
		if ($("#ck_vt12").is(":checked")) {
			$("#vt12").show('fast');
		} else {
			$('#vt12').hide('fast');
		}
	});
	
	$('#ck_vt13').change(function() {
		if ($("#ck_vt13").is(":checked")) {
			$("#vt13").show('fast');
		} else {
			$('#vt13').hide('fast');
		}
	});
	
	$('#ck_vt14').change(function() {
		if ($("#ck_vt14").is(":checked")) {
			$("#vt14").show('fast');
		} else {
			$('#vt14').hide('fast');
		}
	});
	
	$('#ck_vt15').change(function() {
		if ($("#ck_vt15").is(":checked")) {
			$("#vt15").show('fast');
		} else {
			$('#vt15').hide('fast');
		}
	});
	
	$('#ck_vt16').change(function() {
		if ($("#ck_vt16").is(":checked")) {
			$("#vt16").show('fast');
		} else {
			$('#vt16').hide('fast');
		}
	});
	
	$('#ck_vt17').change(function() {
		if ($("#ck_vt17").is(":checked")) {
			$("#vt17").show('fast');
		} else {
			$('#vt17').hide('fast');
		}
	});
	
	$('#ck_vt18').change(function() {
		if ($("#ck_vt18").is(":checked")) {
			$("#vt18").show('fast');
		} else {
			$('#vt18').hide('fast');
		}
	});
	
	$('#ck_vt19').change(function() {
		if ($("#ck_vt19").is(":checked")) {
			$("#vt19").show('fast');
		} else {
			$('#vt19').hide('fast');
		}
	});
	
	$('#ck_vt20').change(function() {
		if ($("#ck_vt20").is(":checked")) {
			$("#vt20").show('fast');
		} else {
			$('#vt20').hide('fast');
		}
	});
	
	$('#ck_vt21').change(function() {
		if ($("#ck_vt21").is(":checked")) {
			$("#vt21").show('fast');
		} else {
			$('#vt21').hide('fast');
		}
	});
	
	$('#ck_vt22').change(function() {
		if ($("#ck_vt22").is(":checked")) {
			$("#vt22").show('fast');
		} else {
			$('#vt22').hide('fast');
		}
	});
	
	$('#ck_vt23').change(function() {
		if ($("#ck_vt23").is(":checked")) {
			$("#vt23").show('fast');
		} else {
			$('#vt23').hide('fast');
		}
	});
	
	$('#ck_vt24').change(function() {
		if ($("#ck_vt24").is(":checked")) {
			$("#vt24").show('fast');
		} else {
			$('#vt24').hide('fast');
		}
	});
	$('#ck_vt25').change(function() {
		if ($("#ck_vt25").is(":checked")) {
			$("#vt25").show('fast');
		} else {
			$('#vt25').hide('fast');
		}
	});
	
	$('#ck_vt_muksi').change(function() {
		if ($("#ck_vt_muksi").is(":checked")) {
			$("#vt_muksi").show('fast');
		} else {
			$('#vt_muksi').hide('fast');
		}
	});
	
	$('#ck_vt_hukcham').change(function() {
		if ($("#ck_vt_hukcham").is(":checked")) {
			$("#vt_hukcham").show('fast');
		} else {
			$('#vt_hukcham').hide('fast');
		}
	});
	
	$('#ck_vt_amgak').change(function() {
		if ($("#ck_vt_amgak").is(":checked")) {
			$("#vt_amgak").show('fast');
		} else {
			$('#vt_amgak').hide('fast');
		}
	});
	$('#ck_vtgang').change(function() {
		if ($("#ck_vtgang").is(":checked")) {
			$("#vt_vtgang").show('fast');
		} else {
			$('#vt_vtgang').hide('fast');
		}
	});
	
	
	
	//태천왕릉
	$('#ck_tw1').change(function() {
		if ($("#ck_tw1").is(":checked")) {
			$("#tw1").show('fast');
		} else {
			$('#tw1').hide('fast');
		}
	});

	$('#ck_tw2').change(function() {
		if ($("#ck_tw2").is(":checked")) {
			$("#tw2").show('fast');
		} else {
			$('#tw2').hide('fast');
		}
	});
	
	$('#ck_tw3').change(function() {
		if ($("#ck_tw3").is(":checked")) {
			$("#tw3").show('fast');
		} else {
			$('#tw3').hide('fast');
		}
	});
	
	$('#ck_tw4').change(function() {
		if ($("#ck_tw4").is(":checked")) {
			$("#tw4").show('fast');
		} else {
			$('#tw4').hide('fast');
		}
	});
	
	$('#ck_tw5').change(function() {
		if ($("#ck_tw5").is(":checked")) {
			$("#tw5").show('fast');
		} else {
			$('#tw5').hide('fast');
		}
	});
	
	$('#ck_tw6').change(function() {
		if ($("#ck_tw6").is(":checked")) {
			$("#tw6").show('fast');
		} else {
			$('#tw6').hide('fast');
		}
	});
	
	$('#ck_tw7').change(function() {
		if ($("#ck_tw7").is(":checked")) {
			$("#tw7").show('fast');
		} else {
			$('#tw7').hide('fast');
		}
	});
	
	$('#ck_tw7').change(function() {
		if ($("#ck_tw7").is(":checked")) {
			$("#tw7").show('fast');
		} else {
			$('#tw7').hide('fast');
		}
	});
	
	$('#ck_tw8').change(function() {
		if ($("#ck_tw8").is(":checked")) {
			$("#tw8").show('fast');
		} else {
			$('#tw8').hide('fast');
		}
	});
	
	$('#ck_tw9').change(function() {
		if ($("#ck_tw9").is(":checked")) {
			$("#tw9").show('fast');
		} else {
			$('#tw9').hide('fast');
		}
	});
	
	$('#ck_tw10').change(function() {
		if ($("#ck_tw10").is(":checked")) {
			$("#tw10").show('fast');
		} else {
			$('#tw10').hide('fast');
		}
	});
	
	$('#ck_tw11').change(function() {
		if ($("#ck_tw11").is(":checked")) {
			$("#tw11").show('fast');
		} else {
			$('#tw11').hide('fast');
		}
	});
	
	$('#ck_tw12').change(function() {
		if ($("#ck_tw12").is(":checked")) {
			$("#tw12").show('fast');
		} else {
			$('#tw12').hide('fast');
		}
	});
	
	$('#ck_tw13').change(function() {
		if ($("#ck_tw13").is(":checked")) {
			$("#tw13").show('fast');
		} else {
			$('#tw13').hide('fast');
		}
	});
	
	$('#ck_tw14').change(function() {
		if ($("#ck_tw14").is(":checked")) {
			$("#tw14").show('fast');
		} else {
			$('#tw14').hide('fast');
		}
	});
	
	$('#ck_tw15').change(function() {
		if ($("#ck_tw15").is(":checked")) {
			$("#tw15").show('fast');
		} else {
			$('#tw15').hide('fast');
		}
	});
	
	$('#ck_tw16').change(function() {
		if ($("#ck_tw16").is(":checked")) {
			$("#tw16").show('fast');
		} else {
			$('#tw16').hide('fast');
		}
	});
	
	$('#ck_tw17').change(function() {
		if ($("#ck_tw17").is(":checked")) {
			$("#tw17").show('fast');
		} else {
			$('#tw17').hide('fast');
		}
	});
	
	$('#ck_tw18').change(function() {
		if ($("#ck_tw18").is(":checked")) {
			$("#tw18").show('fast');
		} else {
			$('#tw18').hide('fast');
		}
	});
	
	$('#ck_tw19').change(function() {
		if ($("#ck_tw19").is(":checked")) {
			$("#tw19").show('fast');
		} else {
			$('#tw19').hide('fast');
		}
	});
	
	$('#ck_tw20').change(function() {
		if ($("#ck_tw20").is(":checked")) {
			$("#tw20").show('fast');
		} else {
			$('#tw20').hide('fast');
		}
	});
	
	$('#ck_tw21').change(function() {
		if ($("#ck_tw21").is(":checked")) {
			$("#tw21").show('fast');
		} else {
			$('#tw21').hide('fast');
		}
	});
	
	$('#ck_tw22').change(function() {
		if ($("#ck_tw22").is(":checked")) {
			$("#tw22").show('fast');
		} else {
			$('#tw22').hide('fast');
		}
	});
	
	$('#ck_tw23').change(function() {
		if ($("#ck_tw23").is(":checked")) {
			$("#tw23").show('fast');
		} else {
			$('#tw23').hide('fast');
		}
	});
	
	$('#ck_tw24').change(function() {
		if ($("#ck_tw24").is(":checked")) {
			$("#tw24").show('fast');
		} else {
			$('#tw24').hide('fast');
		}
	});
	
	$('#ck_tw_siik').change(function() {
		if ($("#ck_tw_siik").is(":checked")) {
			$("#tw_siik").show('fast');
		} else {
			$('#tw_siik').hide('fast');
		}
	});
	
	$('#ck_tw_nukgol').change(function() {
		if ($("#ck_tw_nukgol").is(":checked")) {
			$("#tw_nukgol").show('fast');
		} else {
			$('#tw_nukgol').hide('fast');
		}
	});
	
	$('#ck_tw_gwangbae').change(function() {
		if ($("#ck_tw_gwangbae").is(":checked")) {
			$("#tw_gwangbae").show('fast');
		} else {
			$('#tw_gwangbae').hide('fast');
		}
	});
	
	$('#ck_twgang').change(function() {
		if ($("#ck_twgang").is(":checked")) {
			$("#tw_twgang").show('fast');
		} else {
			$('#tw_twgang').hide('fast');
		}
	});
	
});
