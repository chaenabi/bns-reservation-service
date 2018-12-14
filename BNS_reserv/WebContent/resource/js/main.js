
$("#ck_bns_id").click(e=>{

	var bns_id = $('#bns_id').val();

	if(bns_id == "") {
		$('#notfound_id').val('아이디를 입력해주세요');
		$('#no_match_id').show();
	} else {

	
		$.ajax({
				
		        crossDomain:true,
		        type : "GET",
		        url : "http://a.bns.plaync.com/bnsapi/character/equipments/"+bns_id,
		        dataType: 'jsonp',
		        /*headers: {
		            'Access-Control-Allow-Credentials' : true,
		            'Access-Control-Allow-Origin':'*',
		            'Access-Control-Allow-Methods':'GET',
		            'Access-Control-Allow-Headers':'application/www-form-urlencoded',
		          },*/
		        success: function(result){
		        	
		        	
		        	//console.log("json_bns_id is: "+ bns_id);
		        	
		        	//실제 존재하는 아이디를 담는다.
		        	$('#bns_id').val(bns_id);
		        	
		        	var test = {
		        			 bns_id : $('#bns_id').val()
		        	}
		        	
		        	//id check
     			   $.ajax({
     		            async: true,
     		            type : 'get',
     		            data :  $('#kakao-login').serialize(),
     		            url : "/BNS_reserv/BNSidckServ",
     		            dataType : 'json',
     		            contentType: "application/www-form-urlencoded; charset=UTF-8",
     		            timeout: 3000,
     		      
     		            success : function(data) {
     		            		//alert(data.result);
 		
     		            		if($.trim(data.result)  ==  "false") {
     		                    //아이디가 존재하지 않을 경우 초록으로, 존재할 경우 빨강으로 처리하는 디자인
     		                	$('#notfound_id').val("사용할 수 있는 아이디입니다.");
     		                	$("#notfound_id").attr('style',  'color:green;font-weight:bold');
     		                
     		                	
     		                    $('#no_match_id').show();
     		        			
     		        			$('#bns_id').attr("readonly", true);		
     		        			$("#bns_id").attr('style',  'color:gray');
     		            		
     		        			//확인버튼으로 submit.
     				        	$("#determine_bns_id").click(e=>{

     				        		if ($('#bns_id').val() != "") {
     				        			var form = document.getElementById("kakao-login");  
     				        			        	
     				        			form.submit();
     				        			
     				        		} else if ($('#bns_id').val() == null){
     				        			console.log($('#servers').val());
     				        			$('#notfound_id').val("먼저 아이디 중복체크를 해주세요.");
     				        			$('#no_match_id').show();
     				        		} 
   		
     				        	})
     		            		
     		            		} else {
     		        			  $('#notfound_id').val("이미 등록되어 있는 아이디입니다.");
     	  		            	 //아이디가 존재하지 않을 경우 초록으로, 존재할 경우 빨강으로 처리하는 디자인
     			                    $("#notfound_id").attr('style',  'color:red;font-weight:bold');
     			                   
     			                    $('#no_match_id').show();
     			                    $("#bns_id").focus();
     		            		}
     		        			
     		        			
     		        			
     		            		
     
     		            },
     		           error: function() {
     		        	  $('#notfound_id').val("알수 없는 오류가 발생했습니다");
		        			$('#no_match_id').show();            		        
     		            }
     		        });
		        	
		        	

		        	
		        	
		        	
		        	//var form = document.getElementById("kakao-login"); 
		        	//form.submit(); 
		        },
		        error : function(error) {

		        	$('#no_match_id').show();
		        }
		        
		
		        
	    
		
		});//ajax
	    
	
	} 

});

$("#determine_bns_id").click(e=>{
	if ($.trim($('#bns_id').val()) == "") {
		$('#notfound_id').val("먼저 아이디 중복체크를 해주세요.");
			$('#no_match_id').show();
			
	} 
});



//카카오 로그인

Kakao.init("031e33baa1e3d2a584c550bacf19c0a9");
Kakao.Auth.createLoginButton({
	container : '#kakao-login-btn',
	
	size: 'medium',
	success : function(authObj) {
		Kakao.API.request({
			url : '/v1/user/me',
			success : function(res) {
				
				// json형태로 출력되는 로그인 정보들을 변수에 담는다.
					var id =JSON.stringify(res.id);
					var email = JSON.stringify(res.kaccount_email);
					var nickname = JSON.stringify(res.properties.nickname);
																	 // res.properties['nickname']으로도
																		// 접근 가능.
					var access_token = JSON.stringify(authObj.access_token);
	            	
					// 로그인 정보들을 input 태그의 value 에 담는다.
						$('#id').val(id);
						$('#email').val(email);
						$('#nickname').val(nickname);
						$('#access_token').val(access_token);
						// alert("res: "+ JSON.stringify(res));
						// kakao.api.request 에서 불러온 결과값을 json형태로 출력
						// id, email, nickname은 res안에 있으므로, res.id 등으로 호출가능
						// alert("authObj: "+ JSON.stringify(authObj));
						// Kakao.Auth.createLoginButton에서 불러온 결과값을 json형태로 출력	

				
				
				// DB에 아이디가 있으면 바로 서브밋, 없으면 bnsid div 를 띄우도록 설정한다.
				$.ajax({
					async: true,
 		            type : 'get',
 		            data :  $('#kakao-login').serialize(),
 		            url : "/BNS_reserv/DBidckServ",
 		            dataType : 'json',
 		            contentType: "application/json; charset=UTF-8",
 		            timeout: 3000,
 		            success : function(data) {
 		            	
 		            	if($.trim(data.result)  ==  "false") {
							$('#bnsid').show('slow');
						} else {
 		            	$('#bns_id').val($.trim(data.result));
 		            	//alert($('#bns_id').val());
 						var form = document.getElementById("kakao-login");  
 		            	form.submit();
 		            	
						}
 		            	
 		            },
 		            
					error : function() {
						$('#notfound_id').val("알수 없는 오류가 발생했습니다");
		        			$('#no_match_id').show();
					}
				
				});
				
				

			}
				});
			
	
	},

	fail : function(error) {
		alert(JSON.stringify(error));
		alert("로그인 실패!");
	}
});


// 다른 계정으로 로그인하기 버튼
function loginForm() {
Kakao.Auth.loginForm({

	success : function(authObj) {
		Kakao.API.request({
			url : '/v1/user/me',
			success : function(res) {
				
				// json형태로 출력되는 로그인 정보들을 변수에 담는다.
				var id =JSON.stringify(res.id);
				var email = JSON.stringify(res.kaccount_email);
				var nickname = JSON.stringify(res.properties.nickname);
																 // res.properties['nickname']으로도
																	// 접근 가능.
				var access_token = JSON.stringify(authObj.access_token);
            	
				// 로그인 정보들을 input 태그의 value 에 담는다.
					$('#id').val(id);
					$('#email').val(email);
					$('#nickname').val(nickname);
					$('#access_token').val(access_token);
					// alert("res: "+ JSON.stringify(res));
					// kakao.api.request 에서 불러온 결과값을 json형태로 출력
					// id, email, nickname은 res안에 있으므로, res.id 등으로 호출가능
					// alert("authObj: "+ JSON.stringify(authObj));
					// Kakao.Auth.createLoginButton에서 불러온 결과값을 json형태로 출력	

			
			
			// DB에 아이디가 있으면 바로 서브밋, 없으면 bnsid div 를 띄우도록 설정한다.
			$.ajax({
				async: true,
		            type : 'get',
		            data :  $('#kakao-login').serialize(),
		            url : "/BNS_reserv/DBidckServ",
		            dataType : 'json',
		            contentType: "application/json; charset=UTF-8",
		            timeout: 3000,
		            success : function(data) {
		            	if($.trim(data.result)  ==  "false") {
							$('#bnsid').show('slow');
						} else {
 		            	$('#bns_id').val($.trim(data.result));
 		            	//alert($('#bns_id').val());
 						var form = document.getElementById("kakao-login");  
 		            	form.submit();
 		            	
						}
		            },
		            
				error : function() {
					$('#notfound_id').val("알수 없는 오류가 발생했습니다");
        			$('#no_match_id').show();
				}
			
			});

			}
	});
			
	
},

	fail : function(error) {
		alert(JSON.stringify(error));
		alert("로그인 실패!");
	}
});
};



