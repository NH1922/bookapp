<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.books.Book" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
  <title>List of books</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
  <h2>Book List</h2>  
	  <table class="table table-hover">
	  <thead>
      <tr>
        <th>Sr No.</th>
        <th>Title</th>
      </tr>
    </thead>
    <tbody>
	  <%
	  ArrayList<Book> posts=(ArrayList<Book>) request.getAttribute("Books"); 
	
	for (Book book: posts) {   
	%>
	<%session.setAttribute("Books", posts); %>
  	  <tr>
  	    <td><a href="result.jsp?Id=<%=book.getId() %>"><%=book.getId()+1 %></a></td>
        <td><%=book.getName()%></td>
      </tr>
      <%}%>
      
    </tbody>
  </table>
</div>

</body>
</html>

