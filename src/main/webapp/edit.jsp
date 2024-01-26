<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*"%>
    <%@page import="com.entities.*"%>
    <%@page import="org.hibernate.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
 <%@include file="all_js_css.jsp" %> 
</head>
<body>
  <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <h1>Edit your Note</h1>
    <br>
     <%
     
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
     Session s=factoryProvider.getFactory().openSession();
   Note note=(Note)s.get(Note.class,noteId);
   
     
     %>
     <form action="UpdateServlet" method="post">
     <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
 
 
 
 <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter email" value="<%= note.getTitle()%>">
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required name="content"
    id="content" 
    placeholder="Enter your content area" class="form-control" style="height:300px"><%=note.getContent() %></textarea>
  </div>
 <div class="container text-center">
 <button type="submit" class="btn btn-success">Save your note</button></div>
</form>
    </div>

</body>
</html>