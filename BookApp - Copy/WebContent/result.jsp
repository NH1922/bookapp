<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.books.Book" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Detail</title>

<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Book Details</h2>  
	  <table class="table table-hover">
	 <thead>
	 <tr>
	 <th>Key</th>
	 <th>Value</th>
	 </tr>
	 </thead>
	  
	  <%
  ArrayList<Book> posts=(ArrayList<Book>) session.getAttribute("Books"); 

for (Book book: posts) {   
%>
<% if (book.getId()== Integer.parseInt(request.getParameter("Id")))
{%>
<tr>
 	<td>ID</td>
 	<td><%=book.getId() %></td>
 </tr>
 <tr>
 	<td>Name</td>
 	<td><%=book.getName() %></td>
 </tr>
 <tr>
 	<td>Author</td>
 	<td><%=book.getAuthorName()%></td>
 </tr>
 <tr>
 	<td>Cost</td>
 	<td><%=book.getCost() %></td>
 </tr>
<% }%>
<%}%>
      
    </tbody>
  </table>
</div>

</body>
</html>

