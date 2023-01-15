	//1. 서버 요청
	
	//2. 데이터 받아와
	
	//3. 4빵해서 이쁘게 HTML 문자열 만들어
	
	//4. append해!
	$.ready(function(){
			
			var param = {post_code : post_code};
			var paramJson = {};
			paramJson.paramCode = param;
         
			//댓글 리스트 
			$.ajax({
				url:"commentlist.action",
				type:"POST",
				method : "POST",
				dataType: "json",
				contentType : "application/json; charset-utf-8",
				async : false,
				cache : false,
				success : function(data)
				{
					//데이터 정상적으로 넘어옵니다.
					console.log(data);
					
					console.log(data.resultList);
					
					//직접 접근하여 출력하기
					console.log(data.resultList[0].CDEPTH);
					console.log(data.resultList[0].CGROUP);
					console.log(data.resultList[0].COMMENTDATE);
					console.log(data.resultList[0].COMMENT_CODE);
					console.log(data.resultList[0].CONTENT);
					console.log(data.resultList[0].NICKNAME);
					console.log(data.resultList[0].POST_CODE);
					console.log(data.resultList[0].USER_CODE);
					
					//배열 순회하며 출력하기
					data.resultList.map(e => 
					{
						console.log(e.CDEPTH);
						console.log(e.CGROUP);
						console.log(e.COMMENTDATE);
						console.log(e.COMMENT_CODE);
						console.log(e.CONTENT);
						console.log(e.NICKNAME);
						console.log(e.POST_CODE);
						console.log(e.USER_CODE);
					}
				}
			})
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
