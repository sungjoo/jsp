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
	             /*  .error(function() {		// �̰��� �Ϸ�Ǹ� �����̵ǵ��� �ؾ��Ѵ�. (Error ������)
	            	  $("#lotto").html(jq.responseText);
	              }) 
	              .success(function() {		// �̰��� �Ϸ�Ǹ� �����̵ǵ��� �ؾ��Ѵ�.
	            		$("#lotto").html(jq.responseText);
	              }) */
	              .complete(function() {		// �̰��� �Ϸ�Ǹ� �����̵ǵ��� �ؾ��Ѵ�.
	            	  $("#lotto").html(jq.responseText);
	              });
}

// ���۰� ���ÿ� function �ε�.
$(function() {
	/* $("#button").bind("click", load); */
	$("#button").click("click", load);
} )
</script>
</head>
<body>
<div id="lotto"></div>

<form onsubmit="return false">
	<input id="button" type="submit"  value="���" >
</form>
����~!!! �ߺ��� ���ڰ� ���� �� �ֽ��ϴ�.
</body>
</html>