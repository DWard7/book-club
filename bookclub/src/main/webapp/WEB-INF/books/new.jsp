<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Book Club</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <h1>Welcome, ${userName}</h1>
    <form:form action="/books" method="post" modelAttribute="book">
      <form:hidden path="user" value="${userId}"></form:hidden>
      <div class="form-control">
        <form:label path="title">Title</form:label>
        <form:errors path="title"/>
        <form:input path="title"/>
      </div>
      <div class="form-control">
        <form:label path="author">Author:</form:label>
        <form:errors path="author"/>
        <form:input path="author"/>
      </div>
      <div class="form-control">
        <form:label path="thoughts">My Thoughts:</form:label>
        <form:errors path="thoughts"/>
        <form:input path="thoughts"/>
      </div>
      <button class="btn btn-outline-primary" type="submit" value="add book">Add Book</button>
    </form:form>
  </body>
</html>
