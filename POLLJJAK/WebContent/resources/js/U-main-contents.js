$().ready(function(){
	
	//1. 서버 요청
	
	//2. 데이터 받아와
	
	//3. 4빵해서 이쁘게 HTML 문자열 만들어
	
	//4. append해!
	
	$.ajax({
		url: "umaincontents.action",
		dataType: "json",
		success: function(result){
			alert("결과 있음");
		},
		error: function(result){
			alert("err");
		}
	});
	
	
	/*
	var str =`<div class="carousel-row">`;
	
	for(var i = 0; i < 20; i++)
	{
		if(i%4 == 0)
		{
			str += `<div class="carousel-item">`		
		}
		
		str +=  `<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">한은영의 프로젝트</h4>
											<p class="card-text">한은영의 프로젝트</p>
											<p class="card-text">JAVA/ORACLE</p>
										</div>

									</div>
								</div>
							<div>`

	}
	$("#appendChildSpot").
	*/
});