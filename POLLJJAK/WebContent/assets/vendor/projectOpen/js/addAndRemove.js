// 모집 분야 숫자 증감
var i = 1;

function fnCalCount(type, ths){
    var $input = $(ths).parents("td").find("input[name='pop_out']");
    var tCount = Number($input.val());
    var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());
    
    if(type=='p')
    {
        if(tCount < tEqCount) $input.val(Number(tCount)+1);
        
    }else{
        if(tCount > 1) $input.val(Number(tCount)-1);    
    }
}

// 모집 분야 추가 버튼

$(document).on("click","input[name=addPart]",function(){
	
    var add =     
    	'<tr id="tr">'+
        '    <td>'+
        '        <select class="form-select form-select-sm" name="part'+ (1 + i) +'"\>'+
        '            <option value="front'+ (1 + i) +'"\>프론트</option>'+
        '            <option value="backend'+ (1 + i) +'"\>백엔드</option>'+
        '            <option value="pm'+ (1 + i) +'"\>기획</option>'+
        '        </select>'+
        '    </td>'+
        '	 <td class="bseq_ea" style="visibility: hidden;">6</td>'+
        '    <td>'+
        '		<button type ="button" onclick="fnCalCount(\''+'m'+'\',this);" style="background-color:white; border: none;">-</button>'+
		'		<input type="text" name="pop_out" value="1" readonly="readonly" style="text-align:center; width: 15px; border: none;""/>'+
		'		<button type ="button" onclick="fnCalCount(\''+'p'+'\',this);" style="background-color:white; border: none;">+</button>'+
		'	</td>'+
        '    <td>'+
        '       <input type="button" class="btn btn-primary mt-2" name="removePart" value="삭제" style="background-color: #3498db; border-color: #3498db;">'+
		'	</td>'+
        '</tr>';
        
    var trHtml = $( "tr[id=tr]:last" ); //last를 사용하여 tr 이라는 명을 가진 마지막 태그 호출
    
    trHtml.after(add); //마지막 tr명 뒤에 붙인다.
    
    i++;
});


// 모집 분야 삭제 버튼
$(document).on("click","input[name=removePart]",function(){
    
    var trHtml = $(this).parent().parent();
    
    trHtml.remove(); //tr 테그 삭제
    
});


// ---------------------------------

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
