$().ready(function(){
	
		// 모집 분야 추가 버튼
		$('#addPart').click(function(){
			
			//최대추가 갯수 등 예외처리 나중에 추가
			//
			//
			//
			//
			
			var appendedPartCnt = $(".appendedPart").length;
			
			if(appendedPartCnt == 4 )
			{
				alert("모집인원을 초과하여 직무를 추가할 수 없습니다(최대 5명)");
				return;
			}
			var add = 
				`<tr class="appendedPart appendedPart${appendedPartCnt}">
					<td>
						<select class="form-select form-select-sm" name="position">
							<option value="">주요 직무 선택</option>
							<option value="PSPT000001">UI/UX</option>
							<option value="PSPT000002">게임</option>
							<option value="PSPT000003">프로젝트 매니저</option>
							<option value="PSPT000004">하드웨어 기획</option>
							<option value="PSPT000005">그래픽 디자인</option>
							<option value="PSPT000006">UI/UX 디자인</option>
							<option value="PSPT000007">3D 디자인</option>
							<option value="PSPT000008">하드웨어 디자인</option>
							<option value="PSPT000009">IOS</option>
							<option value="PSPT000010">안드로이드</option>
							<option value="PSPT000011">웹 프론트엔드</option>
							<option value="PSPT000012">웹 퍼블리셔</option>
							<option value="PSPT000013">크로스 플랫폼</option>
							<option value="PSPT000014">임베디드SW</option>
							<option value="PSPT000015">웹서버</option>
							<option value="PSPT000016">블록체인</option>
							<option value="PSPT000017">AI</option>
							<option value="PSPT000018">DB/빅데이터/DS</option>
							<option value="PSPT000019">게임서버</option>
							<option value="PSPT000020">사업기획</option>
							<option value="PSPT000021">마케팅</option>
							<option value="PSPT000022">재무/회계</option>
							<option value="PSPT000023">영업</option>
							<option value="PSPT000024">전략/컨설팅</option>
							<option value="PSPT000025">투자/고문</option>
						</select>
					</td>
					<td class="bseq_ea" style="visibility: hidden;">
						6
					</td>
					<td>
						<button type="button" onclick="fnCalCount('-', this);" style="background-color:white; border: none;">-</button>
						<input type="text" id="count${appendedPartCnt}" name="pop_out" value="1" readonly="readonly" style="text-align:center; width: 15px; border: none;"/>
						<button type ="button" onclick="fnCalCount('+',this);" style="background-color:white; border: none;">+</button>
					</td>
					<td>
						<input type="button" class="btn btn-primary remove${appendedPartCnt}" value="삭제" style="background-color: #3498db; border-color: #3498db;">
					</td>
				</tr>`
	
				
			$("#positionAppendSpot").append(add);
			
			$(`.remove${appendedPartCnt}`).click(function(){
				$(this).parent().parent().remove();
			});
			
				
		});
	
	// 참고 추가 버튼
	$(document).on("click","input[name=addReference]",function(){
		
	    var add =     
	    	'<div class="form-group row mt-2" id="reference">'+
	        '    <div class="com-sm-3">'+
	        '        <input type="text" class="form-control mt-2" name="reference'+ (1 + i) +'"\ placeholder="링크를 입력해주세요.">'+
	        '    </div>'+
	        '    <div>'+
	        '       <input type="button" class="btn btn-primary mt-2" name="removeReference" value="삭제" style="background-color: #3498db; border-color: #3498db;">'+
			'	</div>'+
	        '</div>';
	        
	    var divHtml = $( "div[id=reference]:last" ); //last를 사용하여 tr 이라는 명을 가진 마지막 태그 호출
	    
	    divHtml.after(add); //마지막 tr명 뒤에 붙인다.
	    
	    i++;
	});
	
	// 참고 삭제 버튼
	$(document).on("click","input[name=removeReference]",function(){
	    
	    var divHtml = $(this).parent().parent();
	    
	    divHtml.remove(); //tr 테그 삭제
	    
	});
	
	    	
	
		
		
		
		//END OF VALIDATION ------------------------------------------------
		
		
		//SET PARAM---------------------------------------------------------
		/*
		projectId		//프로젝트 명

		subject - 라디오	//주제

		detail - 라디오		//세부분야

		//파일 -나중에		//대표이미지

		location - 라디오	//지역

		region_part		//지역

		position		//모집분야
		...
		...
		...

		*/
		
		
		
		//END OF SET PARAM--------------------------------------------------
		
		
		//SEND REQUEST------------------------------------------------------
		
		
		
		
		//END OF SEND REQUEST-----------------------------------------------
		
	});


function validation()
{
	
	//VALIDATION ------------------------------------------------------
	//alert("확인");
	if(!$("#projectId").val())
	{
		alert("프로젝트 명을 입력하세요");
		$("#projectId").focus();
		
		var offset = $("#projectId").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
		return false;			
	}
	if(!$("input:radio[name='subject']:checked").val())
	{
		alert("프로젝트 주제를 선택하세요");
		$("#subject_part").focus();
		
		var offset = $("#subject_part").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
		return false;
	}
	if(!$("input:radio[name='detail']:checked").val())
	{
		alert("프로젝트 세부분야를 선택하세요");
		$("#department_part").focus();
		
		var offset = $("#department_part").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
		return false;
	}
	
	if(!$("input:radio[name='location']:checked").val())
	{
		alert("모임이 가능한 유형을 선택하세요");
		$("#location").focus();
		
		var offset = $("#location").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
		return false;
	}
	
	if(!$("#region_part").val())
	{
	    alert("모임이 가능한 지역을 선택하세요.");
	    $("#region_part").focus();
	    
	    var offset = $("#region_part").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
	    return false;
	}
	
	if(!$("#leader_position").val())
	{
		alert("팀장(개설자)의 직무를 선택하세요.");
	    $("#leader_position").focus();
	    
	    var offset = $("#leader_position").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
	    return false;
		
	}
	
	if(!$("#position").val())
	{
		alert("팀원의 직무를 선택해주세요.");
	    $("#position").focus();
	    
	    var offset = $("#position").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
	    return false;
		
	}
	
	if(!$("input:radio[name='platform']:checked").val())
	{
		alert("출시 플랫폼을 선택하세요");
		$("#platform").focus();
		
		var offset = $("#platform").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
		return false;
	}
	
	if(!$("#description").val())
	{
	    alert("프로젝트 설명을 입력하세요.");
	    $("#description").focus();
	    
	    var offset = $("#description").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
	    
	    return false;
	}
	
	if(!$("#persnal-skill").val())
	{
		alert("프로젝트의 주요 기술을 선택하세요.");
	    $("#persnal-skill").focus();
	    
	    var offset = $("#persnal-skill").offset(); 
		$("html, body").animate({scrollTop: offset.top},400); 
		
	    return false;
	}
	
	if(!$("#deadLine").val())
	{
		alert("모집 마감일을 선택하세요");
	    $("#deadLine").focus();
	    
	    return false;
		
	}
	
	if(!$("#startDate").val())
	{
		alert("프로젝트 시작일을 선택하세요");
	    $("#startDate").focus();
	    
	    return false;
		
	}
	
	if(!$("#endDate").val())
	{
		alert("프로젝트 시작일을 선택하세요");
	    $("#endDate").focus();
	    return false;
	    
	}
	
	return true;
	
};
	

function fnCalCount(operation, target){
	var updateTarget = $(target).siblings("input").eq(0);
	//조건 예외처리 나중에 추가
	//
	
	if(operation === '-'){
		updateTarget.val((parseInt(updateTarget.val()) - 1));			
	}else if(operation === '+'){
		updateTarget.val((parseInt(updateTarget.val()) + 1));
	}
}	












