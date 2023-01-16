//1. 서버 요청

//2. 데이터 받아와

//3. 4빵해서 이쁘게 HTML 문자열 만들어

//4. append해!
$().ready(function(){
	
	//alert("ds")
	
	//신규 프로젝트 리스트
	$.ajax({
		url:"umaincontents.action",
		type:"POST",
		method : "POST",
		dataType: "json",
		contentType : "application/json; charset-utf-8",
		//async : false,
		//cache : false,
		success : function(data)
		{
			console.log(data.resultList);
			
			console.log(data.resultList[0].P_CODE);
			/*
			 * 0
: 
{P_CODE: 'P000000007',
 P_FILE_NAME: '유동현의 1번 프로젝트.png', 
 P_FILE_PATH: 'C:\\FinalProject\\.metadata\\.plugins\\org.eclipse.wst…rver.core\\tmp1\\wtpwebapps\\POLLJJAK\\upload\\project', 
 P_NAME: '유동현의 1번 프로젝트', 
 SKILL_PART: 'Kotlin', …}
			 * 
			 * */
			var items =`<div class="carousel-item active">
							<div class="carousel-row">`;
			
			//배열 순회하며 출력하기
			data.resultList.map((e, i) => 
			{
				var filepath = e.P_FILE_PATH;
				var startIdx = filepath.indexOf("\\POLLJJAK");
				var newfilepath = filepath.substring(startIdx).replace(/\\/g, '/');
				
				items += 
				`
				<div class="col-md-3 mb-3">
					<div class="card" onclick="location.href='/POLLJJAK/projectDetail.action?p_code=${e.P_CODE}'">
						<img class="img-fluid" alt="100%x280"
							src="${newfilepath}/${e.P_FILE_NAME}">
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
					items +=	`</div>
									</div>`;
				
					if((i+1) != data.resultList.length)
					{
						items += `<div class="carousel-item">
							<div class="carousel-row">`;
					}
				}
			})
			
			$("#appendChildSpot").append(items);
		},
		error : function (err)
		{   
			console.log(err);
		}
	});
});

