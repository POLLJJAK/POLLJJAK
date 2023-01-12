$(document).ready(function(){
	$(".deleteList").click(function(){
		var p_code = $(this).prev().val();
		var param = {p_code : p_code};
		alert("s")
		//서버에 요청
		$.ajax({
			type: "GET",
			url: "delfailedproject.action",  
			data: {p_code : "test"},//param,  
			success: function(res){
				console.log(res);
			},
			error: function(res){
				alert("dddd");
			},
			dataType: "text"  
		})
	})
	
	polljjakPostAjax("delfailedproject.action", {p_code: "test"}, function(result){
		
		if(result == "success"){
			alert("성공");
		} 
		if(result == "fail"){
			alert("실패");
		}
		
	})
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

