<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP</title>
</head>
<body>
<script type="text/javascript">
document.writeln(new Date());
</script>
<br/>
<%= new Date() %>
<br/>
<%= application.getRealPath("/") %> <!-- Root 디렉터리의 실제 위치. -->
</body>
</html>