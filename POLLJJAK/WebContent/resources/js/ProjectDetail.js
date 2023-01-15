/*<!-- 탭박스 JS  -->*/
$(document).ready(function(){
	//지원사유
	$('.news').hide();
	$(".news").slice(0, 3).show();

	$("#load").click(function(e){ 				
		e.preventDefault();
		$(".news:hidden").slice(0, 3).fadeIn(1000).show();   
		if($(".news:hidden").length == 1){      
		}
	});
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});

	$('#deleteCheckModal').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);
		var deleteUrl = button.data('title');
		var modal = $(this);
		
	})
    ///////프로젝트 지원
	$(".apply").click(function(){
		var position_part = $(this).parent().data("id");
		
		//모달에서 지원하기 버튼 클릭
		$("#applySubmitBtn").click(function(){
			
			//유효성검사
			if(!$("#apply_reason").val())
			{
				$("#reasonch").html("※ 지원사유는 필수 입니다! ");
				return;
			}
			$("#position_part").val(position_part);
			$("#applyform").attr("action","projectapply.action").submit();
			
		});
	});
	
	
	// jQuery blacklist drag & drop
	$("#sortable1").sortable({
		connectWith: "#sortable2",
		update : function(event, ui) {
			var u_p_apply_code = ui.item.attr("id");
			var p_code = document.getElementById("p_code").value;
			
		    if (this === ui.item.parent()[0]) {
		    	delete_blacklist(u_p_apply_code, p_code);
		    }
		}
	});
	
	$("#sortable2").sortable({
		connectWith: "#sortable1",
		update : function(event, ui) {
			var u_p_apply_code = ui.item.attr("id");
			var p_code = document.getElementById("p_code").value;
			
		    if (this === ui.item.parent()[0]) {
		    	add_blacklist(u_p_apply_code, p_code);
		    }
		}
	});
});



function add_blacklist(u_p_apply_code, p_code){
	$.ajax({
		type: "POST",
		url: "addblacklist.action",  
		data: { u_p_apply_code : u_p_apply_code,
			    p_code : p_code 
			  },
		dataType: 'Text',
		success: function(data){
		},
		error: function(data){
			console.log("add blacklist : error");
		}
	});
	
}


function delete_blacklist(u_p_apply_code, p_code){
	
	$.ajax({
		type: "POST",
		url: "deleteblacklist.action",  
		data: { u_p_apply_code : u_p_apply_code,
			    p_code : p_code 
			  },
		dataType: 'Text',
		success: function(data){
		},
		error: function(data){
			console.log("delete blacklist : error");
		}
	});
	
}

/* 지원취소 */
function deleteM()
{
	if (confirm("지원멤버에서 삭제하시겠습니까?"))
	{
		/* 삭제ok → delete로 */
		return true;
	}
	else
		return false;
}





