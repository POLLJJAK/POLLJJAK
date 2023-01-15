

$(function() {
	 $('#stopProject_member').on('show.bs.modal', function (event) {
         var modal = $(this);
     });
	 
	 
	 
	 var u_p_apply_code = "${u_p_apply_code }";
	 var p_team_confirm_code = "${p_team_confirm_code.p_team_confirm_code}";
	 
	 $('#stopProject_leader').on('show.bs.modal', function (event) {
		 var modal = $(this);
     });
	 
	/* 중단 요청 버튼 */
	$('#pStopBtn').click(function() {
		
		$('#pStopBtnForm').submit();
	});
 
	/* 팀원 평가 버튼 */
	$('#teamEvalBtn').click(function() {
		
		
		$('#teamEvalBtnForm').submit();
	});
 
	 
	 
});
