
//클릭이벤트: 서버 클릭시 날짜 출력
function getDate(server, divTagID){
	var requestServerDate= {"action":"getDate",	    			
			"server":server
	 }; 
	
	$.getJSON("../../TeamServ", requestServerDate, function(data){
		var htmlTag ='';
		
		for(var i=0;i<data.go_date.length;i++){
			var divid= server + "date" + i;
			dateList = "<div id='"+ divid + "' class='go_date' onclick='getTime(\""+server+"\", \""+ data.go_date[i] + "\");' style='cursor: pointer;'>" + data.go_date[i] + "</div>";
			htmlTag= htmlTag + dateList;
		}
		$('#' + divTagID).html(htmlTag);
	});
}
//클릭이벤트: 날짜리스트 클릭시 시간 출력
function getTime(server, date){
	var requestServerTime= {"action":"getTime",	    			
			"server":server,
			"date":date
	 };
	
	$.getJSON("../../TeamServ", requestServerTime, function(data){
		var htmlTag = '';
		
		$("#timestamp").empty();
		$("#timebar").show();
		
		for(var i=0;i<data.go_time.length;i++){
			var divid= server + "time" + i;
			timeList = "<div id='"+ divid + "' class='go_time' onclick='getTeams("+ '"' + data.go_time[i] + '"'+");' style='cursor: pointer;'><span>"+data.go_time[i]+"</span></div>";
			htmlTag= htmlTag +timeList;
		}
		$('#timestamp').html(htmlTag);
	});
}

//기존 코드. 
//클릭이벤트: 서버 클릭시 날짜 출력
/*function getDate(server){
	var requestServerDate= {"action":"getDate",	    			
			"server":server
	 };
	$.getJSON("../../TeamServ", requestServerDate, function(data){
		$(".go_date").empty();
		
		if(server === '경국지색') {

			for(var i=0;i<data.go_date.length;i++){
				
				
				datelist = "<div id='date"+ i +"'"+" class='go_date' onclick='getTime("+ '"경국지색"'+',"'+data.go_date[i] +'"'+");this.onclick=null;'>"+data.go_date[i]+"</div>";	
				$('#gyungguk_teamlist').append(datelist);
			}
		} else if(server === '절세미인') {
			for(var i=0;i<data.go_date.length;i++){
		
				datelist = "<div id='date"+ i +"'"+" class='go_date' onclick='getTime("+ '"절세미인"'+',"'+data.go_date[i] +'"'+");this.onclick=null;'>"+data.go_date[i]+"</div>";	
				$("#jeolse_teamlist").append(datelist);	
			
			}
		
		}
		
	});
}*/

//기존 코드. 
//클릭이벤트: 날짜리스트 클릭시 시간 출력

/*function getTime(server, date){

	var requestServerTime= {"action":"getTime",	    			
			"server":server,
			"date":date
	 };

	$.getJSON("../../TeamServ", requestServerTime, function(data){
		
			for(var i=0;i<data.go_time.length;i++){
				
				timelist = "<div id='time"+i+"'class='go_time' onclick='getTeams("+ '"' + data.go_time[i] + '"'+");this.onclick=null;'><span>"+data.go_time[i]+"</span></div>";	
				//$("#date"+ i +"").append(timelist);
				$(".go_date").append(timelist);
			}

	});
}*/


//클릭이벤트: 시간표 클릭시 해당 팀 리스트 출력
function getTeams(gt){
	var requestDate = {"action":"getTeams",	    			
			"go_time":gt
	 };
	
	$.getJSON("../../TeamServ", requestDate , function(data){

		$("#team_manage").empty();
		$("#teams_hide").show();
		console.log(data);
		for(var i=0;i<data.team_name.length;i++){
			$("#team_manage").append("<div id='team"+i+"'><a href='#' class='team_name' onclick='getItemList("+ '"' + data.team_name[i] + '"'+"); this.onclick=null;'><span>"+data.team_name[i]+"</span></a></div>");	
		}

	});
}

//클릭이벤트: 팀 리스트 중 하나 클릭시 해당팀 판매아이템목록 출력
function getItemList(team_name){

	var requestItemList = {"action":"getItemList",	    			
			"team_name":team_name
	 };
	
	$.getJSON("../../TeamServ", requestItemList , function(data){

		$(".itemname").empty();
		$(".item").empty();
		$("#menu_hide").show();
		console.log(data);
		for(var i=0;i<data.item_name.length;i++){
			$(".item").append("<div class='itemname'><a>"+ data.item_name[i] + "</a></div");	
		}
		$("#item").append("<hr style='margin: 5px 0 8px 0;'>");

	});
}





/* 서버 사이드바 열림 애니메이션 (클릭이벤트) */
var nav = document.getElementById('nav');
window.onload = function() {
	nav.onclick();

}
function openNav() {
	document.getElementById("sidenav").style.width = "110px";
}

$('#container').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();

	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();


	
});


$('#gyungguk').click(function() {
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();

	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#first_server').show();
});

$('#jeolse').click(function() {
	$('#first_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#second_server').show();
});

$('#gumgang').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#third_server').show();
});

$('#myungbul').click(function() {

	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#fourth_server').show();
});

$('#singum').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#fifth_server').show();
});

$('#ilhwak').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#sixth_server').show();
});

$('#isim').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#eighth_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#seventh_server').show();
});

$('#hwaryung').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#ninth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#eighth_server').show();
});

$('#test_server').click(function() {
	$('#first_server').hide();
	$('#second_server').hide();
	$('#third_server').hide();
	$('#fourth_server').hide();
	$('#fifth_server').hide();
	$('#sixth_server').hide();
	$('#seventh_server').hide();
	$('#eighth_server').hide();
	$('#timebar').hide();
	$('#teams_hide').hide();
	$('#menu_hide').hide();
	$('#ninth_server').show();
});

$('a[class="go_time"]').click(function() {
	$(".teamlists").show();

});

$(".teamlists").click(function() {
	$(".go_time").show();
	$(".team_name").show();
	$(".menu").show();

});




