

$(function (){
		var post_code = $("#post_code").val();
		
	   
		
			var param = {post_code : post_code};
			var paramJson = {};
			paramJson.paramCode = param;
         	
			//댓글 리스트 
			$.ajax({
				url:"commentlist.action",
				type:"POST",
				method : "POST",
				data: JSON.stringify(paramJson),
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

					
				
					var listHtml = "";

					//배열 순회하며 출력하기
					data.resultList.map(e => {
						var cdepth = (e.CDEPTH);
						var cgroup = (e.CGROUP);
						var commentdate = (e.COMMENTDATE);
						var comment_code = (e.COMMENT_CODE);
						var content = (e.CONTENT);
						var nickname = (e.NICKNAME);
						var post_code = (e.POST_CODE);
						var cu_code = (e.USER_CODE);
						
						listHtml +=  "<div class='cmt-list'>"; 
						if(cdepth != 1){	
                        listHtml += "	<div class='col-1'>";
                        //listHtml += "			<img src='assets/img/UserIcon/User-Icon.png' alt=''  style='width: 60px; height: 60px; padding: 10px;'>";
                        //listHtml += "		</a> ";
                        listHtml += "	</div>";
                        listHtml += "	<div class='rereply-content'>";
                        listHtml += "		<div class='cmt_box'>";
                        listHtml += "			<span>";
                        listHtml += "				<b class='cmt_nickname'>"+ nickname +"</b>";
                        listHtml += "			</span>";
                        listHtml += "			<span>";
                        listHtml += 				content;
                        listHtml += "			</span>";
                        listHtml += "		</div>";
                        
                        
                     	// 로그인 상태일때 답글작성 버튼
                        //if("${nick}" != ""){
                        if("${user_code}" != ""){
                            listHtml += "		<div>";
                            listHtml += "			<a href='#' class='write_reply_start' data-bs-toggle='collapse' data-bs-target='#re_reply"+ comment_code +"' aria-expanded='false' aria-controls='collapseExample'>답글&nbsp;달기</a>";
                            listHtml += "		</div>";
                            
                        }
                        listHtml += "	</div>";

	                    }else{	// 답글일때
	                        listHtml += "	<div class='col-1'>";
	                        listHtml += "	</div>";
	                        listHtml += "	<div class='col-1 r_cmt'>";
	                        //listHtml += "		<img src='assets/img/UserIcon/User-Icon.png' alt=''  style='width: 40px; height: 40px; padding: 10px;'>";
	                        listHtml += "	<div class='rereply-content"+ comment_code +" col-7'>";
	                        listHtml += "		<div>";
	                        listHtml += "			<span>";
	                        listHtml += "				<b>"+ nickname +"</b>";
	                        listHtml += "			</span>";
	                        listHtml += "			<span>";
	                        listHtml += 				content;
	                        listHtml += "			</span>";
	                        listHtml += "		</div>";
	                        listHtml += "	</div>";
	
	                        listHtml += "	</div>";
	                    }
						listHtml += "	<div class='rereply-content col-1 reply-right'>";
	                    listHtml += "		<div>";
	                    listHtml += 			commentdate;
	                    listHtml += "		</div>";
	                    
	                    // 로그인 했어
	                    //if("${user_code}" != ""){
                    	if("${user_code}" != ""){
                    		//alert("${user_code}");
                    		console.log(cu_code);
	                        //댓글 작성자와 로그인회원코드가 일치할때 수정/삭제 버튼 등장
	                        if("${user_code}" == cu_code){
	                            listHtml += "		<div>";
	                            //--수정 comment_code, cdepth 넘기기 
	                            listHtml += "			<a href='javascript:' comment_code='"+ comment_code +"' cdepth='"+ cdepth +"' class='reply_modify'>수정</a>";
	                            listHtml += "			&nbsp;|&nbsp;";
	                            //--삭제 comment_code 넘기기
	                            listHtml += "			<a href='javascript:' comment_code='"+ comment_code +"' cdepth='"+ cdepth + "' post_code='"+ post_code +"' cgroup='"+ cgroup +"' class='reply_delete'>삭제</a>";
	                            listHtml += "		</div>";
	                        }
	                    }
	                    listHtml += "	</div>";
	                    // 대댓달기
	                    listHtml += "	<div class='collapse row rereply_write r_cmt' id='re_reply"+ comment_code +"'>";
	                    listHtml += "		<div class='col-1'>";
	                    listHtml += "		</div>";
	                    listHtml += "		<div class='col-1'>";
	                    listHtml += "			<span id='nameTag'></span> ";
	                    listHtml += "		</div>";
	                    listHtml += "		<div class='col-7'>";
	                    listHtml +=  "  		<input class='form-control' id='input_rereply"+ comment_code +"' name='"+comment_code+"' type='text' placeholder='댓글입력...'>";
	                    listHtml += "		</div>";
	                    listHtml += "		<div class='col-3'>";
	                    // 답글달기 버튼이 눌리면 모댓글 번호(comment_code)와 게시물번호(post_code)를 함수에 전달한다.
	
	                    // 동적으로 넣은 html태그에서 발생하는 이벤트는 동적으로 처리해줘야한다 !!!!!
	                    // 예를들어, 동적으로 넣은 html태그에서 발생하는 click 이벤트는 html태그 안에서 onclick으로 처리하면 안되고, jquery에서 클래스명이나 id값으로 받아서 처리하도록 해야한다.
	                    // 아래코드를 보자~~~~
	                    // 위 코드는 클릭되어도 값이 넘겨지지 않는다. 값이 undefined가 된다.
	                    // 아래코드처럼 짜야한다. click이벤트를 처리하지 않고 데이터(comment_code, post_code)만 속성으로 넘겨주도록 작성한다.
	                    listHtml += "			<button type='button' class='btn-hover color-9 write_rereply'comment_code='" + comment_code + "'post_code='" + post_code + "'>답글&nbsp;달기</button>";
	                    listHtml += "		</div>";
	                    listHtml += "	</div>";
	                    // ---- 답글입력란 끝
                     	
                     	
						
					})
					
	                
	                listHtml += "</div>";
	                
	                // 댓글 리스트 div에 넣어주기
	                $("#commentlist-content").html(listHtml);
	                
	                //답글에서 답글달기를 누르면 input란에 "@답글작성자"가 들어간다.
		            $(".write_reply_start").on("click", function(){
		            	//$("#nameTag").text("@"+$(this).attr('nickname')+" ");
		            	$("#nameTag").text("@"+$(this).attr('nickname')+" ");
		            	//alert("답글");
		            });
	                
		            
	                
		            //답글을 작성한 후 답글달기 버튼을 눌렀을 때 그 click event를 아래처럼 jquery로 처리한다.
		            $('.write_rereply').on('click', function() {
		            	console.log( 'comment_code', $(this).attr('comment_code') );
		                console.log( 'post_code', $(this).attr('post_code') );
		                // 답글을 DB에 저장하는 함수를 호출한다. post_code와 no를 같이 넘겨주어야한다.
		                addReComment($(this).attr('post_code'), $(this).attr('comment_code') );
		            });
	                
	                
		            // 삭제버튼
		            $('.reply_delete').on('click', function(){
		            	console.log( 'comment_code', $(this).attr('comment_code') );
		            	removeCmt($(this).attr('post_code'),$(this).attr('comment_code'));

		                
		            });
		         
		            
		        },
	            error : function (err)
	            {   
	               console.log(err);
	            }
            
         }); 
   });

	var post_code = $("#post_code").val();
   // 로그인 한 상태에서 하트를 클릭했을 때 (로그인한 상태인 하트의 <a></a> class명: heart-click)
   $(".heart-click").click(function() {
       // 빈하트를 눌렀을때
       if($(this).children("svg").attr("class") == "bi bi-suit-heart"){
           $.ajax({
               type : "GET",
               url : "likeinsert.action",
               data : {post_code : post_code,},
               dataType : "text",
               success : function(data) {
                  
                   $("#postLike").text(data);
               },
               error : function() {
                   alert("err");
               }
           });
           
       
       $(this).html("<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");

       // 꽉찬 하트를 눌렀을 때
       }else if($(this).children("svg").attr("class") == "bi bi-suit-heart-fill"){
           $.ajax({
        	   type : "GET",
               url : "likeinsert.action",
               data : {post_code : post_code,},
               dataType : "text",
               success : function(data) {
                  $("#postLike").text(data);
               },
               error : function() {
                  alert("err");
               }
           });
           // 빈하트로 바꾸기
           $(this).html('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');

       }
   });
 

   //=======================댓글=============================
	$("#cmtSubmit").click(function()
	{
		var content = $("#content").val();
		if (cmt_content == "")
		{
			$("#content").focus();
			return false;
		}
	
		//alert("호출");
		//alert("${login}");
		if ("${user_code}"=="")
		{
			//여기서 모달 호출 어케해???
			$('#loginplz').modal('show'); 
		}
	});
   	 
   
     function removeCmt(post_code, comment_code)
	{
    	 $.ajax({
    	        url : 'removecomment.action',
    	        type : 'get',
    	        data : {
    	            comment_code : comment_code,
    	            post_code : post_code,
    	        },
    	        success : function(data) {

					$('cmtcount').text(data);
					
	                console.log("댓글 삭제 성공");

    	            // 게시물 번호(bno)에 해당하는 댓글리스트를 새로 받아오기
	                $(function(){});
    	        },
    	        error : function() {
    	            alert('서버 에러');
    	        }
    	    });
	}
   
	 //=====================대댓글=============================
    
	function addReComment(post_code, comment_code)
	{
	    console.log($("#input_rereply" + post_code).val());

	    // 댓글 내용가져오기
	    var content = $("#input_rereply" + post_code).val();
	    //content = content.trim();

		alert(content);
		
	    if(content == ""){	// 입력된게 없을때
	        alert("글을 입력하세요!");
	    }else{	
	        // 입력란 비우기
	        $("#input_rereply" + post_code).val("");

	        // reply+1 하고 그 값을 가져옴
	        $.ajax({
	            url : 'addrecomment.action',
	            type : 'get',
	            data : {
	                post_code : post_code,
	                comment_code : comment_code,
	                content: content,
	            },
	            success : function(data) {

	                $('cmtcount').text(data);
					
	                console.log("답글 작성 성공");

	                // 게시물 번호(bno)에 해당하는 댓글리스트를 새로 받아오기
	                clist();
	            },
	            error : function() {
	                alert('서버 에러');
	            }
	        });

	    }
	}  
	   
	   
   //========================신고============================
	$("#reportSubmitBtn").click(function()
	{

		var reportsel = $("#report_reason_code").val();
		if (reportsel == "")
		{
			$("#report_reason_code").focus();
			$("#reason").text("신고 사유를 선택해주세요.");
			return false;
			
		}
		
	});


