

$(function() {
	 $('#stopProject_member').on('show.bs.modal', function (event) {
         var modal = $(this);
     });
	 
	 
	 var u_p_apply_code = "";
	 var p_team_confirm_code = "";
	 var p_stop_reason="";
	 
	 $('#stopProject_leader').on('show.bs.modal', function (event) {
		 u_p_apply_code = $(event.relatedTarget).data('u_p_apply_code');
         p_team_confirm_code = $(event.relatedTarget).data('p_team_confirm_code');
         p_stop_reason = $(event.relatedTarget).data('p_stop_reason');
		 var modal = $(this);
	 
     });
	 

	 $('#pStopBtn').click(function() {
		 location.href="p_stop_project.action?u_p_apply_code="+ u_p_apply_code + "&p_team_confirm_code=" + p_team_confirm_code;
	 });
	
	
	 
	 
});
