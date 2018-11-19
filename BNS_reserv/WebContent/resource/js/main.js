
$("#ck_bns_id").click(e=>{

	var bns_id = $('#bns_id').val();

	if(bns_id == "") {
		$('#notfound_id').val('아이디를 입력해주세요');
		$('#no_match_id').show();
	} else {
	
	var content = "";
		$.ajax({
				
		        crossDomain:true,
		        type : "GET",
		        url : "http://a.bns.plaync.com/bnsapi/character/equipments/"+bns_id,
		        dataType: 'jsonp',
		        success: function(result){
		        	
		        	
        			/// 진짜 중복체크하는곳
        			   $.ajax({
        		            async: true,
        		            type : 'POST',
        		            data : bns_id,
        		            url : "/BNS_reserv/idcheckServ",
        		            dataType : "text",
        		            contentType: "application/json; charset=UTF-8",
        		            success : function(result) {
        		         
        		                    //아이디가 존재할 경우 초록색으로 , 존재하지 않을 경우 빨강으로 처리하는 디자인
        		                	$('#notfound_id').val("사용할 수 있는 아이디입니다.");
        		                	$("#notfound_id").attr('style',  'color:green;font-weight:bold');
        		                
        		                	
        		                    $('#no_match_id').show();
        		        			
        		        			$('#bns_id').attr("readonly", true);		
        		        			$("#bns_id").attr('style',  'color:gray');
        		                    
        		                    //아이디가 중복하지 않으면  idck = 1 
        		                    idck = 1;
        		                    
        		                
        		            },
        		            fail : function() {
        		            	$('#notfound_id').val("이미 존재하는 아이디입니다.");
    		                    //아이디가 존재할 경우 초록색으로 , 존재하지 않을 경우 빨강으로 처리하는 디자인
    		                    $("#notfound_id").attr('style',  'color:red;font-weight:bold');
    		                   
    		                    $('#no_match_id').show();
    		                    $("#bns_id").focus();
        		            	
        		            },
        		            error : function(error) {
        		                
        		            	$('#notfound_id').val("예상치 못한 문제가 발생했습니다.");
    		        			$('#no_match_id').show();
        		            }
        		        });
		        	
		        	//실제 존재하는 아이디를 담는다.
		        	$('#bns_id').val(bns_id);
		        	
		        	//확인버튼으로 submit.
		        	$("#determine_bns_id").click(e=>{
		        		
		        		if ($('#bns_id').val() != "") {
		        			var form = document.getElementById("kakao-login");  
		        			form.submit();
		        		} else {
		        			
		        			$('#notfound_id').val("먼저 아이디 중복체크를 해주세요.");
		        			$('#no_match_id').show();
		        		}
		        		
		        		
		        	})
		        	
		        	//var form = document.getElementById("kakao-login"); 
		        	//form.submit(); 
		        },
		    	error : function(error) {
		    		

		        	$('#no_match_id').show();
		        }
		        
		
		        
	    
		
		});//ajax
	    
	
	}//else 

});



//

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
				
				$(function() {
					
					// 로그인 정보들을 input 태그의 value 에 담는다.
					$('#id').val(id);
					$('#email').val(email);
					$('#nickname').val(nickname);
					$('#access_token').val(access_token);

					var bns_id = document.getElementById("bns_id");
					var form = document.getElementById("kakao-login");  
					
					
					// 서브밋 한다.
					if ($('#bns_id').val() != "") {
					  form.submit();
					} else {
						$('#bnsid').show('slow');
						
					}
					
					
					
				});

				// alert("res: "+ JSON.stringify(res));
				// kakao.api.request 에서 불러온 결과값을 json형태로 출력
				// id, email, nickname은 res안에 있으므로, res.id 등으로 호출가능.

				// alert("authObj: "+ JSON.stringify(authObj));
				// Kakao.Auth.createLoginButton에서 불러온 결과값을 json형태로 출력
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
				var nickname = JSON.stringify(res.properties['nickname']);
																 // res.properties.nickname으로도
																	// 접근 가능.
				var access_token = JSON.stringify(authObj.access_token);
				
						$(function() {
							
							// 로그인 정보들을 input 태그의 value 에 담는다.
							$('#id').val(id);
							$('#email').val(email);
							$('#nickname').val(nickname);
							$('#access_token').val(access_token);
							
							// 서브밋 한다.
							 var form = document.getElementById("kakao-login");  
							
							
							
							  form.submit();

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

function form_submit() {
var form = document.getElementById("kakao-login");  
form.submit();
};






