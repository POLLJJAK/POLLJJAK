$().ready(function(){
	
	var paramJson = {};
	newProjectList(paramJson);
	
	//alert("test")
	
	$(".selectTrigger").change(function(){
		
		var param = {
				REGION_PART_CODE  : $("#regionPart").val(),
				SUBJECT_PART_CODE : $("#subjectPart").val(),
				POSITION_PART_CODE: $("#positionPart").val()
		};
		
		var paramJson = {};
		paramJson.paramCode = param;
		newProjectList(paramJson);
	})
	
});

function newProjectList(paramJson)
{
	//신규 프로젝트 리스트
	$.ajax({
		url:"projectapplynew.action",
		type:"POST",
		method : "POST",
		data : JSON.stringify(paramJson),
		dataType: "json",
		contentType : "application/json; charset-utf-8",
		success : function(data)
		{
			//$("#appendChildSpot").remove();
			console.log(data.resultList);
			
			if(data.resultList[0] == null)
			{
				var items = `
				<div class="container mb-3">
				<div class="mt-1 mb-1 p-1 d-flex justify-content-center">
					<div class="no-pj-title">신규 프로젝트가 존재하지 않습니다.</div>
				</div>
			</div>
			`;
			
			$("#appendChildSpot").html(items);
			return;
				
			}
			
			var items =`<div class="row">`;
			
			data.resultList.map((e, i) => 
			{
				var filepath = e.P_FILE_PATH;
				var startIdx = filepath.indexOf("\\POLLJJAK");
				var newfilepath = filepath.substring(startIdx).replace(/\\/g, '/');
				
				items +=  
				`
				<div class="col-3">
					<div class="card" onclick="location.href='/POLLJJAK/projectDetail.action?p_code=${e.P_CODE}'">
						<img class="img-fluid" alt="100%x280" src="${newfilepath}/${e.P_FILE_NAME}">
						<div class="card-body">
							<h4 class="card-title">${e.P_NAME}</h4>
							<p class="card-text">${e.U_NAME}</p>
							<p class="card-text">${e.SKILL_PART}</p>
						</div>
					</div>
				</div>
					`;
				
				if((i+1) % 4 == 0)
				{
					items +=	`</div>`;
				
					if((i+1) != data.resultList.length)
					{
						items += `<div class="row">`;
					}
				}
			})
			
			$("#appendChildSpot").html(items);
		},
		error : function (err)
		{   
			console.log(err);
		}
	});
	
	
}