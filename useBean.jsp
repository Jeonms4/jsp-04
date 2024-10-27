<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
    <h4>구구단 출력하기</h4>
    <jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan" />
    <% int n = 0;
	   for(int i = 1; i < 10; i++) {
		   n = gugudan.process(5,i);
		   out.print(5 + " * " + i + " = " + n + "<br>");
	   }		
	%>
</body>
</html>
