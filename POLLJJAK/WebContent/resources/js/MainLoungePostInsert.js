

function registerSummernote(element, placeholder, max, callbackMax) {
	    $('#summernote').summernote({
	    	height: 400,
			lang: "ko-KR",
		    tabsize: 2,
	        toolbar: [
	         ['style', ['style']],
	         ['font', ['bold', 'italic', 'underline','strikethrough']],
	      	 // 글자색
	         ['color', ['forecolor','color']],
	         // 글머리 기호, 번호 매기기, 문단 정렬
	         ['para', ['ul', 'ol', 'paragraph']],
	         // 표 만들기
	         ['table', ['table']],
	         // 그림첨부, 링크만들기, 동영상 첨부
	         ['insert', ['link', 'picture','video', 'hr']],
	         // 코드보기, 확대해서 보기, 도움말
	         ['view', ['codeview']]
	     	 ],
	      placeholder,
	      callbacks: {
	        onKeydown: function(e) {
	          var t = e.currentTarget.innerText;
	          if (t.length >= max) {
	        	  e.preventDefault();
	            if (e.keyCode != 8)
	              e.preventDefault();
	            // add other keys ...
	          }
	        },
	        onKeyup: function(e) {
	          var t = e.currentTarget.innerText;
	          if (typeof callbackMax == 'function') {
	            callbackMax(max - t.length);
	          }
	        },
	        onPaste: function(e) {
	          var t = e.currentTarget.innerText;
	          var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
	          e.preventDefault();
	          var all = t + bufferText;
	          document.execCommand('insertText', false, all.trim().substring(0, 1000));
	          if (typeof callbackMax == 'function') {
	            callbackMax(max - t.length);
	          }
	        }
	      }
	    });
	  }
	
	$(function()
	{
		registerSummernote('.summernote', '내용을 입력해주세요.', 1000, function(max) 
		{
		    $('#maxContentPost').text(max+"자/ 최대1000자");
		    $("#err").css("display","none");
		});
	});
	
	
	
	$(function()
	{
		
		$("#err").css("display","none");
		
		// 유효성 검사
		
		// 제목 글자수 제한
		$("#title").keyup(function(e) {
 		
 		var content = $(this).val();
		if (content.length == 33 ) 
		{
			$("#err").css("display","inline").html("제목 최대 글자수를 초과했습니다.");
			$(this).val(content.substring(0, 33));
			//return false;
		}
		else if (content.length <= 32 ) {
			$("#err").css("display","none");
		} 
	});
		
		
		
	//리셋버튼클릭
	$("#reset").click(function()
	{
			$("#summernote").summernote("reset");
	});
		
		
	//서브밋버튼클릭
	$("#submit").click(function()
	{
		if ($("#title").val()=="")
		{
			$("#title").focus();
			$("#err").css("display","inline").html("제목을 입력해주세요.");
			return false;
		}
			
		if ($("#summernote").summernote('isEmpty'))
		{
			$("#summernote").summernote({ focus: true });
			$("#err").css("display","inline").html("내용을 입력해주세요.");
			return false;
		}
		
			
		//$("#myForm").submit();			
			
	});
		
		
});