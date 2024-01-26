<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD NOTES</title>
<%@include file="all_js_css.jsp" %> 
</head>
<body>
 <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <br>
    <h1>Please fill details</h1>
    <br>
    <!--form  -->
    <form action="SaveNoteServlet" method="Post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required name="content"
    id="content" 
    placeholder="Enter your content area" class="form-control" style="height:300px"></textarea>
  </div>
 <div class="container text-center">
 <button type="submit" class="btn btn-primary">Add</button></div>
</form>
    </div>

</body>
</html>