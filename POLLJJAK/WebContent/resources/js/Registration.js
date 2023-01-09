$(document).ready(function()
{
	$(".id_check").click(function()
	{
		alert("존재하는 아이디 입니다.");
	});
	$(".c_business_number").click(function()
	{
		alert("사업자등록번호 api 사용 예정");
	});
	 
	$("#registration_done").click(function()
	{
		$(".err").css("display", "none");
		
		// 0. 데이터 검사
		//-- 공란(입력항목 누락) 없이 모두 작성되었는지 확인
		if ($("#id").val()=="") 
		{
			$("#errId").html("아이디를 입력하세요.");
			$("#errId").css("display", "inline");
			$("#id").focus();
			
			return;
		}
		if ($("#pw").val()=="") 
		{
			$("#errPw").html("비밀번호를 입력하세요.");
			$("#errPw").css("display", "inline");
			$("#pw").focus();
			
			return;
		}
		if ($("#pw_check").val()=="") 
		{
			$("#errPwCheck").html("비밀번호 확인을 해주세요.");
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
		if ($("#nickName").val()=="") 
		{
			$("#errNickName").html("닉네임을 입력하세요.");
			$("#errNickName").css("display", "inline");
			$("#nickName").focus();
			
			return;
		}
		if ($("#position").val()=="") 
		{
			$("#errPosition").html("담당자직책을 입력하세요.");
			$("#errPosition").css("display", "inline");
			$("#position").focus();
			
			return;
		}
		if ($("#email").val()=="" || $("#domain").val()=="none") 
		{
			$("#errEmail").html("이메일을 입력하세요.");
			$("#errEmail").css("display", "inline");
			$("#email").focus();
			
			return;
		}
		if ($("#tel").val()=="") 
		{
			$("#errTel").html("전화번호를 입력하세요.");
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
		if ($("#companyNum").val()=="") 
		{
			$("#errCNum").html("사업자등록번호를 입력하세요.");
			$("#errCNum").css("display", "inline");
			$("#companyNum").focus();
			
			return;
		}
		if ($("#intro").val()=="") 
		{
			$("#errIntro").html("기업소개를 입력하세요.");
			$("#errIntro").css("display", "inline");
			$("#intro").focus();
			
			return;
		}
		
		
		
		alert("회원가입이 완료되었습니다.");
		
	}); 

});