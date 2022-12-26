
    /*<!-- 탭박스 JS  -->*/
    $(document).ready(function(){
      
      $('ul.tabs li').click(function(){
        var tab_id = $(this).attr('data-tab');

        $('ul.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
      })

    })
    
    
    /* 드래그앤드롭 */
    /* const columns = document.querySelectorAll(".column");
	
	columns.forEach(function(column)
	{
	    new Sortable(column, 
   		{
	        group: "shared",
	        animation: 150,
	        ghostClass: "blue-background-class"
	    });
	}); */
	
	function drag(ev) 
	{
		
	    ev.dataTransfer.setData("text", ev.target.id);
	}
	
	function dragOver(ev) 
	{
	    ev.preventDefault();
	}
	
	function drop(ev) 
	{
	    ev.preventDefault();
	    var data = ev.dataTransfer.getData("text");
	    ev.target.appendChild(document.getElementById(data));
	}
