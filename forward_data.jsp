<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
    <% String strN = request.getParameter("num");
		int intN = Integer.parseInt(strN);
	%>
	
	<% for (int i=1;i<10;i++){
			out.print(intN + " * " + i + " = " +(intN*i)+"<br>");
		}
	%>
</body>
</html>
