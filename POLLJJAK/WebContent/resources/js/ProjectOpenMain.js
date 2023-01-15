$(document).ready(function(){
	$(".deleteList").click(function(){
		var p_code = $(this).prev().val();
		var param = {p_code : p_code};
		alert("s")
		//서버에 요청
		$.ajax({
			type: "GET",
			url: "delfailedproject.action",  
			data: param,  
			success: function(result){
				console.log(result);
			},
			error: function(zzz){
				alert("dddd");
			},
			dataType: "text"  
		})
	});
	/*
	polljjakPostAjax("delfailedproject.action", {p_code: "test"}, function(result){
		
		if(result == "success"){
			alert("성공");
		} 
		if(result == "fail"){
			alert("실패");
		}
		
	})
	*/
});

/*
polljjakGetAjax("delfailedproject.action", param, function(result){
	
	if(result == "success"){
		alert("성공");
	} 
	if(result == "fail"){
		alert("실패");
	}

})
*/

function polljjakGetAjax(url, param, callback){
	$.ajax({
		type: "GET",
		url: url,  
		data: param,//param,  
		success: callback,
		error: function(res){
			alert("에러");
		},
		dataType: "text"  
	})
}
/*
function polljjakPostAjax(url, param, callback){
	$.ajax({
		type: "POST",
		url: url,  
		data: param,//param,  
		success: callback,
		error: function(res){
			alert("에러");
		},
		dataType: "text"  
	})
}
*/


	/*
	var param = {
	  b_no: [
	    "1078174307" //ex) $("#bno").val() !! 하이픈 들어가면 안됌
	  ]
	}
	
	 $.ajax({
	    type: "POST",
	    url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=zw9Rd/Otbl08z8daKvR1eaWXYaWFsTYNl7X5WIZYm0AfBGrejxQJJ4WPUALpruqzD48cmzrr30TWP0Vxel6ZGw==&returnType=JSON",
	    data: JSON.stringify(param),
	    dataType: "JSON",
	    contentType: "application/json",
	    success: function(response) {
	        console.log(response.data[0].tax_type);
	        response.data[0].tax_type == "국세청에 등록되지 않은 사업자등록번호입니다.";
	        // tax type이  존재하지 않을 경우
	        // DOM 조작
	        // ex) $("#input").html("어쩌구저쩌구)
	    },
	    error : function(err){
	        console.log(err);
	    }
	});
	*/

	
