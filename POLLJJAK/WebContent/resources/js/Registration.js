$(document).ready(function()
{	
	$("#u_registration_done").click(function()
	{
		$(".err").css("display", "none");
		
		// 0. 데이터 검사
		//-- 공란(입력항목 누락) 없이 모두 작성되었는지 확인
		
		// 아이디 유효성 : 영문자 숫자 5~20자 사이
		var idCheck = /^[a-zA-Z0-9]{5,20}$/;
		
		if ($("#id").val()=="") 
		{
			$("#errId").html("아이디를 입력하세요.");
			$("#errId").css("display", "inline");
			$("#id").focus();
			
			return;
		}
		if (!idCheck.test($("#id").val())) 
		{
			$("#errId").html("아이디는 영문 대소문자와 숫자 5~20자리로 입력해야 합니다.(특수문자 불가능)");
			$("#errId").css("display", "inline");
			$("#id").focus();
			
			return;
		}
		
		// 비밀번호 유효성 : 영문자+숫자+특수문자 조합의 8~20자 사이
		var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
		
		if ($("#pw").val()=="") 
		{
			$("#errPw").html("비밀번호를 입력하세요.");
			$("#errPw").css("display", "inline");
			$("#pw").focus();
			
			return;
		}
		if (!pwCheck.test($("#pw").val())) 
		{
			$("#errPw").html("비밀번호는 영문자+숫자+특수문자를 포함한 8~20자리로 입력해야 합니다.");
			$("#errPw").css("display", "inline");
			$("#pw").focus();
			
			return;
		}
		if ($("#pw_check").val()=="" || $("#pw_check").val() != $("#pw").val()) 
		{
			$("#errPwCheck").html("비밀번호가 일치하지 않습니다.");
			$("#errPwCheck").css("display", "inline");
			$("#pw_check").focus();
			
			return;
		}
		if ($("#name").val()=="") 
		{
			$("#errName").html("이름을 입력하세요.");
			$("#errName").css("display", "inline");
			$("#name").focus();
			
			return;
		}
		
		// 닉네임 유효성 : 영문자 숫자 20자 이하
		var nickNameCheck = /^[a-zA-Z0-9]{0,20}$/;
		
		if ($("#nickName").val()=="") 
		{
			$("#errNickName").html("닉네임을 입력하세요.");
			$("#errNickName").css("display", "inline");
			$("#nickName").focus();
			
			return;
		}
		if (!nickNameCheck.test($("#nickName").val())) 
		{
			$("#errNickName").html("닉네임은 영문 대소문자와 숫자 20자리 이하로 입력해야 합니다.");
			$("#errNickName").css("display", "inline");
			$("#nickName").focus();
			
			return;
		}

		// 이메일 유효성 : 영문자 숫자 5~20자 사이
		var emailCheck = /^[a-zA-Z0-9]{5,20}$/;
		
		if ($("#email").val()=="") 
		{
			$("#errEmail").html("이메일을 입력하세요.");
			$("#errEmail").css("display", "inline");
			$("#email").focus();
			
			return;
		}
		if (!emailCheck.test($("#email").val())) 
		{
			$("#errEmail").html("이메일은 영문 대소문자와 숫자 5~20자리로 입력해야 합니다.(특수문자 불가능)");
			$("#errEmail").css("display", "inline");
			$("#email").focus();
			
			return;
		}
		
		if ($("#domain").val() == "none")
		{
			$("#errDomain").html("도메인을 선택해주세요.");
			$("#errDomain").css("display", "inline");
			$("#domain").focus();
			return;
		}
		
		// 전화번호 하이픈(-) 없이 숫자 10~11자 사이
		var telCheck = /^[0-9]{10,11}$/;
		
		if ($("#tel").val()=="") 
		{
			$("#errTel").html("전화번호를 입력하세요.");
			$("#errTel").css("display", "inline");
			$("#tel").focus();
			
			return;
		}
		if (!telCheck.test($("#tel").val())) 
		{
			$("#errTel").html("전화번호는 하이픈(-)을 제외한 숫자만 입력해야 합니다.");
			$("#errTel").css("display", "inline");
			$("#tel").focus();
			
			return;
		}
		if ($("#personal-part").val()=="none") 
		{
			$("#errPsp").html("주요직무를 선택하세요.");
			$("#errPsp").css("display", "inline");
			$("#personal-part").focus();
			
			return;
		}
		if ($("#region").val()=="none") 
		{
			$("#errRegion").html("선호지역을 선택하세요.");
			$("#errRegion").css("display", "inline");
			$("#region").focus();
			
			return;
		}
		if ($("#interests").val()=="none") 
		{
			$("#errInterests").html("관심분야를 선택하세요.");
			$("#errInterests").css("display", "inline");
			$("#interests").focus();
			
			return;
		}
		if ($("#personal-skill").val()=="none") 
		{
			$("#errPsk").html("주요기술을 선택하세요.");
			$("#errPsk").css("display", "inline");
			$("#personal-skill").focus();
			
			return;
		}
		if ($("#personal-skill1").val()=="none") 
		{
			$("#errPsk1").html("부가기술 1을 선택하세요.");
			$("#errPsk1").css("display", "inline");
			$("#personal-skill1").focus();
			
			return;
		}
		if ($("#personal-skill2").val()=="none") 
		{
			$("#errPsk2").html("부가기술 2를 선택하세요.");
			$("#errPsk2").css("display", "inline");
			$("#personal-skill2").focus();
			
			return;
		}
		if ($("#personal-skill3").val()=="none") 
		{
			$("#errPsk3").html("부가기술 3을 선택하세요.");
			$("#errPsk3").css("display", "inline");
			$("#personal-skill3").focus();
			
			return;
		}
		
		// 위의 모든 확인 과정 통과 했으면
		// 폼 submit 액션 처리 수행
		$("#registrationForm").submit();
		
	}); 

	
	$("#c_registration_done").click(function()
	{
		$(".err").css("display", "none");
		
		// 0. 데이터 검사
		//-- 공란(입력항목 누락) 없이 모두 작성되었는지 확인
		
		// 아이디 유효성 : 영문자 숫자 5~20자 사이
		var idCheck = /^[a-zA-Z0-9]{5,20}$/;
		
		if ($("#id").val()=="") 
		{
			$("#errId").html("아이디를 입력하세요.");
			$("#errId").css("display", "inline");
			$("#id").focus();
			
			return;
		}
		if (!idCheck.test($("#id").val())) 
		{
			$("#errId").html("아이디는 영문 대소문자와 숫자 5~20자리로 입력해야 합니다.(특수문자 불가능)");
			$("#errId").css("display", "inline");
			$("#id").focus();
			
			return;
		}
		
		// 비밀번호 유효성 : 영문자+숫자+특수문자 조합의 8~20자 사이
		var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
		
		if ($("#pw").val()=="") 
		{
			$("#errPw").html("비밀번호를 입력하세요.");
			$("#errPw").css("display", "inline");
			$("#pw").focus();
			
			return;
		}
		if (!pwCheck.test($("#pw").val())) 
		{
			$("#errPw").html("비밀번호는 영문자+숫자+특수문자를 포함한 8~20자리로 입력해야 합니다.");
			$("#errPw").css("display", "inline");
			$("#pw").focus();
			
			return;
		}
		if ($("#pw_check").val()=="" || $("#pw_check").val() != $("#pw").val()) 
		{
			$("#errPwCheck").html("비밀번호가 일치하지 않습니다.");
			$("#errPwCheck").css("display", "inline");
			$("#pw_check").focus();
			
			return;
		}
		if ($("#cName").val()=="") 
		{
			$("#errCName").html("기업명을 입력하세요.");
			$("#errCName").css("display", "inline");
			$("#cName").focus();
			
			return;
		}
		if ($("#name").val()=="") 
		{
			$("#errName").html("이름을 입력하세요.");
			$("#errName").css("display", "inline");
			$("#name").focus();
			
			return;
		}
		
		if ($("#position").val()=="") 
		{
			$("#errPosition").html("담당자직책을 입력하세요.");
			$("#errPosition").css("display", "inline");
			$("#position").focus();
			
			return;
		}
		
		// 이메일 유효성 : 영문자 숫자 5~20자 사이
		var emailCheck = /^[a-zA-Z0-9]{5,20}$/;
		
		if ($("#email").val()=="") 
		{
			$("#errEmail").html("이메일을 입력하세요.");
			$("#errEmail").css("display", "inline");
			$("#email").focus();
			
			return;
		}
		if (!emailCheck.test($("#email").val())) 
		{
			$("#errEmail").html("이메일은 영문 대소문자와 숫자 5~20자리로 입력해야 합니다.(특수문자 불가능)");
			$("#errEmail").css("display", "inline");
			$("#email").focus();
			
			return;
		}
		if ($("#domain").val() == "none")
		{
			$("#errDomain").html("도메인을 선택해주세요.");
			$("#errDomain").css("display", "inline");
			$("#domain").focus();
			return;
		}
		
		if ($("#companyNum").val()=="") 
		{
			$("#errCNum").html("사업자등록번호를 입력하세요.");
			$("#errCNum").css("display", "inline");
			$("#companyNum").focus();
			
			return;
		}
		if ($("#checked_companyNum").val()=="") 
		{
			$("#errCNumCheck").html("사업자등록번호 확인 버튼을 눌러주세요.");
			$("#errCNumCheck").css("display", "inline");
			$("#companyNumBtn").focus();
			
			return;
		}
		if ($("#intro").val()=="") 
		{
			$("#errIntro").html("기업소개를 입력하세요.");
			$("#errIntro").css("display", "inline");
			$("#intro").focus();
			
			return;
		}
	});

	$(".c-business-number").click(function()
	{
		/*
		사업자 등록번호 API 사용
		키값 : zw9Rd/Otbl08z8daKvR1eaWXYaWFsTYNl7X5WIZYm0AfBGrejxQJJ4WPUALpruqzD48cmzrr30TWP0Vxel6ZGw==
		예시 : b_no 139-87-00196 당근
		진위확인 : http://api.odcloud.kr/api/nts-businessman/v1/validate?serviceKey=zw9Rd/Otbl08z8daKvR1eaWXYaWFsTYNl7X5WIZYm0AfBGrejxQJJ4WPUALpruqzD48cmzrr30TWP0Vxel6ZGw==&returnType=JSON
		*/

		// 요청
			var param = {
			  b_no: [
			    //"1078174307" //ex) $("#bno").val() !! 하이픈 들어가면 안됌
			    $("#companyNum").val()
			  ]
			}
			 $.ajax({
			    type: "POST",
			    url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=zw9Rd/Otbl08z8daKvR1eaWXYaWFsTYNl7X5WIZYm0AfBGrejxQJJ4WPUALpruqzD48cmzrr30TWP0Vxel6ZGw==&returnType=JSON",
			    data: JSON.stringify(param),
			    dataType: "JSON",
			    contentType: "application/json",
			    success: function(response) {
			    	
			    	$(".err").css("display", "none");
			    	
			    	// 테스트
			        //console.log(response.data[0].tax_type);
			        response.data[0].tax_type == "국세청에 등록되지 않은 사업자등록번호입니다.";
			        // tax type이  존재하지 않을 경우
			        // DOM 조작
			        // ex) $("#input").html("어쩌구저쩌구)
			        
			        if(response.data[0].tax_type == "국세청에 등록되지 않은 사업자등록번호입니다.")
			        {
				        $("#errCNumCheck").html("잘못된 사업자 등록번호 입니다.");
						$("#errCNumCheck").css("display", "inline");
				        $("#companyNum").focus();
				        
				        return;
			        }
			        else
			        {
			        	$("#errCNumCheck").html("사업자 등록번호 입력이 완료되었습니다.");
			        	$("#errCNumCheck").css({"display":"inline", "color":"gray"});
						$("#companyNum").attr("readonly", true);
						$("#companyNum").css({"background-color":"gray", "color":"white", "border":"gray"});
						$("#companyNumBtn").attr("disabled", true);
						$("#companyNumBtn").css({"background-color":"gray", "border":"gray"});
						$("#checked_companyNum").val("y");
			        }
			    },
				error : function(err){
			        console.log(err);
			    }
			});


		// 응답 결과 예시
		// 응답 결과1 -> 당근(존재하는 사업자)
		/*
		 {
		    "request_cnt": 1,
		    "match_cnt": 1,
		    "status_code": "OK",
		    "data": [
		        {
		            "b_no": "1078174307",
		            "b_stt": "계속사업자",
		            "b_stt_cd": "01",
		            "tax_type": "부가가치세 일반과세자",
		            "tax_type_cd": "01",
		            "end_dt": "",
		            "utcc_yn": "N",
		            "tax_type_change_dt": "",
		            "invoice_apply_dt": ""
		        }
		    ]
		}

		// 응답결과2 -> 존재하지 않는 사업자 번호
		{
		    "request_cnt": 1,
		    "status_code": "OK",
		    "data": [
		        {
		            "b_no": "107817-4307",
		            "b_stt": "",
		            "b_stt_cd": "",
		            "tax_type": "국세청에 등록되지 않은 사업자등록번호입니다.",
		            "tax_type_cd": "",
		            "end_dt": "",
		            "utcc_yn": "",
		            "tax_type_change_dt": "",
		            "invoice_apply_dt": ""
		        }
		    ]
		}
		 
		 */
	});

});