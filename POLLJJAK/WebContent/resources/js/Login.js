// 아이디 찾기(ajax)
$("#findId-btn").click(function()
{
	$(".err").css("display", "none");
	
	if ($("#name").val() == "")
	{
		$("#err").html("이름을 입력해주세요.");
		$("#err").css("display", "inline");
		$("#name").focus();
		return;
	}
	if ($("#email").val() == "")
	{
		$("#err").html("이메일을 입력해주세요.");
		$("#err").css("display", "inline");
		$("#email").focus();
		return;
	}
	if ($("#domain").val() == "none")
	{
		$("#err").html("도메인을 선택해주세요.");
		$("#err").css("display", "inline");
		$("#domain").focus();
		return;
	}
	
	var userType = $("input:radio[name=\"userType\"]:checked").val()
	var name = $("#name").val()
	var email = $("#email").val()
	var domain_part_code = $("select[id=domain] > option:selected").val()
	var params = {"userType": userType, "name" : name, "email": email, "domain_part_code": domain_part_code}
	
	$.ajax({
			url: "ajaxFindId.action"
			, type: "POST"
			, data: params
			, dataType: "text"
			, success: function(data)
			{
				if($.trim(data) == 0)
				{
					$("#err").html("입력하신 정보와 일치하는 회원정보가 없습니다.");
					$("#err").css("display", "inline");
					$("#name").focus();
					return;
				}
				else
				{
					$("#findId_form").submit();
				}
			}
			, error :function(e)
			{
				alert("에러코드 : " + e.responseText + "/" + e.status);
				$("#err").html("해당 정보가 없습니다.");
			}
	});
	
	/*
	var params = {userType: $("input:radio[name=\"userType\"]:checked").val()
				  , name: $("#name").val()
				  , email: $("#email").val()
				  , domain_part_code: $("select[id=domain] > option:selected").val()};  
		//var params = "userType=" + $("input:radio[name=\"userType\"]:checked").val() + "&name=" + $("#name").val() + "&email=" + $("#email").val() + "&domain_part_code=" + $("select[id=domain] > option:selected").val();
	
	$.ajax(
	{
		type:"POST"
		, url:"ajaxFindId.action"
		, data:params
		, dateType:"json"
		, success:function(data)
		{
			if(data.equals(ajax))
			{
				$("#err").html("입력하신 정보와 일치하는 아이디가 없습니다.");
				$("#err").css("display", "inline");
				$("#name").focus();
				return;
			}
			else
			{
				$("#findId_form").submit();
			}
		}
		,error :function(e)
		{
			alert("에러코드 : " + e.responseText + "/" + e.status);
			$("#err").html("해당 정보가 없습니다.");
		}
		
	});
*/
});


// 비밀번호 찾기(ajax)
$("#findPw-btn").click(function()
{
	$(".err").css("display", "none");
	
	if ($("#id").val() == "")
	{
		$("#err").html("아이디를 입력해주세요.");
		$("#err").css("display", "inline");
		$("#id").focus();
		return;
	}
	if ($("#name").val() == "")
	{
		$("#err").html("이름을 입력해주세요.");
		$("#err").css("display", "inline");
		$("#name").focus();
		return;
	}
	if ($("#email").val() == "")
	{
		$("#err").html("이메일을 입력해주세요.");
		$("#err").css("display", "inline");
		$("#email").focus();
		return;
	}
	if ($("#domain").val() == "none")
	{
		$("#err").html("도메인을 선택해주세요.");
		$("#err").css("display", "inline");
		$("#domain").focus();
		return;
	}
	
	// ajax
	var userType = $("input:radio[name=\"userType\"]:checked").val()
	var id = $("#id").val()
	var name = $("#name").val()
	var email = $("#email").val()
	var domain_part_code = $("select[id=domain] > option:selected").val()
	var params = {"userType": userType, "id": id, "name" : name, "email": email, "domain_part_code": domain_part_code}
	
	$.ajax({
			url: "ajaxFindPw.action"
			, type: "POST"
			, data: params
			, dataType: "text"
			, success: function(data)
			{
				if($.trim(data) == 0)
				{
					$("#err").html("입력하신 정보와 일치하는 회원정보가 없습니다.");
					$("#err").css("display", "inline");
					$("#name").focus();
					return;
				}
				else
				{
					$("#findpw_form").submit();
				}
			}
			, error :function(e)
			{
				alert("에러코드 : " + e.responseText + "/" + e.status);
				$("#err").html("해당 정보가 없습니다.");
			}
	});
});

// 비밀번호 재설정
$("#changePw-btn").click(function()
{
	$(".err").css("display", "none");
	
	if ($("#pw").val() == "")
	{
		$("#err").html("비밀번호를 입력해주세요.");
		$("#err").css("display", "inline");
		$("#pw").focus();
		return;
	}
	if ($("#pw_check").val()=="" || $("#pw_check").val() != $("#pw").val()) 
	{
		$("#err").html("비밀번호가 일치하지 않습니다.");
		$("#err").css("display", "inline");
		$("#pw_check").focus();
		
		return;
	}
	
	$("#changePw_form").submit();
	
});

