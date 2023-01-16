//1. 서버 요청

//2. 데이터 받아와

//3. 4빵해서 이쁘게 HTML 문자열 만들어

//4. append해!
$().ready(function(){
	
	alert("ds")
	
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
			//데이터 정상적으로 넘어옵니다.
			console.log(data.resultList);
			
			//직접 접근하여 출력하기
			console.log(data.resultList[0].P_CODE);
			
			var items =`<div class="carousel-item active">
							<div class="carousel-row">`;
			
			//배열 순회하며 출력하기
			data.resultList.map((e, i) => 
			{
				if((i+1) % 4){
					items +=	`<div class="carousel-item">
									<div class="carousel-row">`;
				}
				items += 
				`
				<div class="col-md-3 mb-3">
					<div class="card">
						<input type="hidden" value="${e.P_CODE}"/>
						<img class="img-fluid" alt="100%x280"
							src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
						<div class="card-body">
							<h4 class="card-title">${e.P_NAME}</h4>
							<p class="card-text">${e.U_NAME}</p>
							<p class="card-text">${e.U_SKILL}</p>
						</div>
					</div>
				</div>
				`;
				if((i+1) % 4 == 0){
					items += `</div></div>`;
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