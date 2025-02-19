<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<jsp:useBean id="BookDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>책 목록</title>
</head>    
<body>
    <jsp:include page ="menu.jsp" />
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">도서 목록</h1>
      </div>
    </div>

    <% ArrayList<Book> listOfBooks = BookDAO.getAllBooks(); 
    %>
    
    <div class="container">
      <div class="col" align="left">
        <% for(int i = 0; i < listOfBooks.size(); i++){
        	Book book = listOfBooks.get(i);
        %>
        <div class="col-lg">
          <h4>[<%= book.getCategory() %>] <%= book.getName() %></h4>
          <p><%= book.getDescription()%>
          <p><%= book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>
        </div>
        <hr>
          <% } 
          %>            
      </div>
      
    </div>
    
    <jsp:include page ="footer.jsp" />
</body>
</html>
