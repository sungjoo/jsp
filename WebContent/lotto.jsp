<%@page import="net.hybrid.lotto.Lotto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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