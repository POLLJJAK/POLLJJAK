<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FileTest</title>
<script src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>

<h1>FILE TEST</h1>
<hr>

<form action="actions/uploadimagetest.action" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	<span>파일첨부</span><br>
	<input type="file" id="fileInput1" class="fileInput" name="file1"/><br>
	<input type="file" id="fileInput2" class="fileInput" name="file2"/><br>
	<input type="file" id="fileInput3" class="fileInput" name="file3"/>

	<input type="text" name="aaa"/>
	<input type="text" name="bbb"/>

	<button type="submit" id="btnSubmit">전송!</button>

</form>

</body>
	<script>
		
		$().ready(function(){
			
			$(".fileInput").change(function(){
				alert($(this).val());
			});
			
		
		});
		
		
		
	</script>
</html>
