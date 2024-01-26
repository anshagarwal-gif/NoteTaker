<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="com.helper.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes</title>
<%@include file="all_js_css.jsp" %> 
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <br>
    <h1 class="text-uppercase">All Notes:</h1>
    <div class="row">
    <div class="col-12">
     <%
    Session s= factoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for(Note note:list){
    %>
    <div class="card ">
  <img class="card-img-top m-4 mx-auto" style="max-width:100px" src="img/notes.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p class="container text-right"><%=note.getAddedDate() %></p>
    <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-success">Update</a></div>
  </div>
    <%	
    }
    s.close();
    %>
    </div>
    </div>
   
    </div>
    </div>

</body>
</html>