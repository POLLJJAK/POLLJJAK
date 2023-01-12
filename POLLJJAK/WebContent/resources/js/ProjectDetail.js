    /*<!-- 탭박스 JS  -->*/
    $(document).ready(function(){
      
      $('ul.tabs li').click(function(){
    	  console.log("ddd");
        var tab_id = $(this).attr('data-tab');

        $('ul.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
      });
      

    });
    
    	$( function() {
    	    $( "ul.droptrue" ).sortable({
    	      connectWith: "ul"
    	    });
    	 
    	    $( "#sortable1, #sortable2" ).disableSelection();
    	  } );
    	
    	
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
     	
     	//지원사유
     	$(document).ready(function(){
     		$("#reason1").css("display","none");
     		
            $('#member1').hover(function() 
         	{
    			$("#reason1").css("display","inline");
            	}, function(){
                $("#reason1").css("display","none");
            });
            
        });
     	
     	$(function(){
     		$('.news').hide();
     	    $(".news").slice(0, 3).show(); 				// select the first ten
     	    $("#load").click(function(e){ 				// click event for load more
     	        e.preventDefault();
     	        $(".news:hidden").slice(0, 3).fadeIn(1000).show();   // select next 10 hidden divs and show them
     	        if($(".news:hidden").length == 1){      // check if any hidden divs still exist
     	            //alert("No more news"); 			    // alert if there are none left
     	        }
     	    });
     	});
     	
	 $(document).ready(function() {
	     $('#deleteCheckModal').on('show.bs.modal', function (event) {
	         var button = $(event.relatedTarget);
	         var deleteUrl = button.data('title');
	         var modal = $(this);
	        
	     })
	 });
     	
     	 
 	 function reasonCheck()
 	 {
 		 if(!$("#applyreason").val())
 		 {
 			 $("#reasonch").html("※ 지원사유는 필수 입니다! ");
 			 return false;
 		 }
 		 
 		 return true;
 	 }
     	 
     	 
     	 
     	 
     	
    
    
    