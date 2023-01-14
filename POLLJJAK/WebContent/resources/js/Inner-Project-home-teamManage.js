

$(function() {
	 $('#stopProject_member').on('show.bs.modal', function (event) {
         var modal = $(this);
     });
	 
	 
	 
	 var u_p_apply_code = "${u_p_apply_code }";
	 var p_team_confirm_code = "${p_team_confirm_code.p_team_confirm_code}";
	 
	 $('#stopProject_leader').on('show.bs.modal', function (event) {
		 var modal = $(this);
     });
	 
	 
	$('#pStopBtn').click(function() {
		
		$('#pStopBtnForm').submit();
	});
 
	 
	 
	 
});
