<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
    <h3>param 액션 태그</h3>
    <jsp:include page="param_date.jsp" >
     <jsp:param name="date" value="<%=new java.util.Date()%>" />
    </jsp:include>
    
    <p>JSP Server Pages</p>
</body>
</html>
