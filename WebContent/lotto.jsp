<%@page import="net.hybrid.lotto.Lotto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Lotto</title>
</head>
<body>
<%

	Lotto lotto = new Lotto();
	int[] numbers = lotto.getLotto();
	
	for(int i = 0; i < numbers.length; i++) {
		if(i == 5) {
			out.print(numbers[i]);
		}else {
			out.print(numbers[i]+" , ");
		}
	}

%>
lotto
</body>
</html>