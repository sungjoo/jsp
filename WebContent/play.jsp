<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Play Lotto</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" >
function load() {
	/* $('#lotto').load('lotto.jsp'); */
	var jq = $.get('lotto.jsp')
	             /*  .error(function() {		// 이것이 완료되면 실행이되도록 해야한다. (Error 났을때)
	            	  $("#lotto").html(jq.responseText);
	              }) 
	              .success(function() {		// 이것이 완료되면 실행이되도록 해야한다.
	            		$("#lotto").html(jq.responseText);
	              }) */
	              .complete(function() {		// 이것이 완료되면 실행이되도록 해야한다.
	            	  $("#lotto").html(jq.responseText);
	              });
}

// 시작과 동시에 function 로딩.
$(function() {
	/* $("#button").bind("click", load); */
	$("#button").click("click", load);
} )
</script>
</head>
<body>
<div id="lotto"></div>

<form onsubmit="return false">
	<input id="button" type="submit"  value="대박" >
</form>
주의~!!! 중복된 숫자가 나올 수 있습니다.
</body>
</html>